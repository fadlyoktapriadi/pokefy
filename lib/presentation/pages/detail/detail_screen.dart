import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/type_defences/type_defences_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/move/get_move_bloc.dart';
import 'package:pokefy/presentation/bloc/favorite/favorite_pokemon_bloc.dart';
import 'package:pokefy/presentation/pages/detail/tab/about_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/evolution_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/moves_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/stats_tab.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/text_helper.dart';
import 'package:pokefy/utils/type_color.dart';

double _responsiveMaxContentWidth(double screenWidth) {
  if (screenWidth >= 1600) return 1300;
  if (screenWidth >= 1200) return 1100;
  if (screenWidth >= 900) return 920;
  return screenWidth;
}

class DetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const DetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final pokemonId = pokemon.id?.toString() ?? '';
    final typeNames =
        pokemon.types
            ?.map((item) => item.type?.name?.toLowerCase().trim())
            .whereType<String>()
            .where((name) => name.isNotEmpty)
            .toList() ??
        <String>[];

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              di.locator<GetSpeciesBloc>()
                ..add(GetSpeciesEvent.getSpecies(id: pokemonId)),
        ),
        BlocProvider(
          create: (_) {
            final bloc = di.locator<TypeDefencesBloc>();
            if (typeNames.isNotEmpty) {
              bloc.add(TypeDefencesEvent.getTypeDefences(names: typeNames));
            }
            return bloc;
          },
        ),
        BlocProvider(create: (_) => di.locator<EvolutionChainBloc>()),
        BlocProvider(
          create: (_) =>
              di.locator<GetMoveBloc>()
                ..add(GetMoveEvent.getMoves(pokemon.moves ?? [])),
        ),
        BlocProvider(
          create: (_) {
            final bloc = di.locator<FavoritePokemonBloc>();
            final id = pokemon.id;
            if (id != null) {
              bloc.add(FavoritePokemonEvent.checkStatus(pokemonId: id));
            }
            return bloc;
          },
        ),
      ],
      child: BlocListener<GetSpeciesBloc, GetSpeciesState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loaded: (species) {
              final evolutionChainUrl = species.evolutionChain?.url;
              if (evolutionChainUrl != null && evolutionChainUrl.isNotEmpty) {
                final evolutionChainId = evolutionChainUrl
                    .split('/')
                    .where((part) => part.isNotEmpty)
                    .last;
                context.read<EvolutionChainBloc>().add(
                  EvolutionChainEvent.getEvolutionChain(id: evolutionChainId),
                );
              }
            },
          );
        },
        child: Scaffold(
          body: Stack(
            children: [
              DetailBackground(pokemon: pokemon),
              DetailBottomPanel(pokemon: pokemon),
              DetailPokemonImage(pokemon: pokemon),
              DetailHeader(pokemon: pokemon),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailBackground extends StatelessWidget {
  const DetailBackground({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final types = pokemon.types;
    final primaryType = (types == null || types.isEmpty)
        ? null
        : types.firstWhere((type) => type.slot == 1, orElse: () => types.first);
    final typeName = primaryType?.type?.name?.toLowerCase();

    final baseColor =
        typeColorMap[typeName ?? 'unknown'] ?? const Color(0xFF808080);

    final topColor = _lighten(baseColor, 0.10);
    final middleColor = _lighten(baseColor, 0.25);
    final bottomColor = _lighten(baseColor, 0.40);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [topColor, middleColor, bottomColor],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }

  Color _lighten(Color color, double amount) {
    final hsl = HSLColor.fromColor(color);
    final lightness = (hsl.lightness + amount).clamp(0.0, 1.0);
    return hsl.withLightness(lightness).toColor();
  }
}

class DetailPokemonImage extends StatelessWidget {
  const DetailPokemonImage({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final imageUrl = pokemon.sprites?.other?.home?.frontDefault;
    final size = MediaQuery.of(context).size;
    final imageHeight = size.width >= 1200
        ? (size.width * 0.24).clamp(190.0, 210.0)
        : size.width >= 768
            ? (size.width * 0.34).clamp(240.0, 320.0)
            : (size.width * 0.62).clamp(295.0, 320.0);
    final topOffset = (size.height * 0.11).clamp(82.0, 100.0);

    return Positioned(
      top: topOffset,
      left: 0,
      right: 0,
      child: Center(
        child: Hero(
          tag: "pokemon_${pokemon.id}",
          flightShuttleBuilder:
              (
                BuildContext flightContext,
                Animation<double> animation,
                HeroFlightDirection flightDirection,
                BuildContext fromHeroContext,
                BuildContext toHeroContext,
              ) {
                final fromHero = fromHeroContext.widget as Hero;
                final toHero = toHeroContext.widget as Hero;

                final shuttleChild = flightDirection == HeroFlightDirection.push
                    ? toHero.child
                    : fromHero.child;

                return AnimatedBuilder(
                  animation: animation,
                  child: shuttleChild,
                  builder: (context, child) {
                    final curved = Curves.easeInOut.transform(animation.value);
                    final scale = Tween<double>(
                      begin: 0.96,
                      end: 1.0,
                    ).transform(curved);
                    final opacity = Tween<double>(
                      begin: 0.9,
                      end: 1.0,
                    ).transform(curved);

                    return Material(
                      type: MaterialType.transparency,
                      child: Opacity(
                        opacity: opacity,
                        child: Transform.scale(scale: scale, child: child),
                      ),
                    );
                  },
                );
              },
          child: imageUrl == null || imageUrl.isEmpty
              ? Image.asset(
                  'assets/images/image_failed.png',
                  height: imageHeight,
                  fit: BoxFit.contain,
                )
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: imageHeight,
                  fit: BoxFit.contain,
                  fadeInDuration: Duration.zero,
                  fadeOutDuration: Duration.zero,
                  placeholder: (context, url) => SizedBox(
                    height: imageHeight,
                    child: const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/images/image_failed.png',
                    height: imageHeight,
                    fit: BoxFit.contain,
                  ),
                ),
        ),
      ),
    );
  }
}

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxContentWidth = _responsiveMaxContentWidth(screenWidth);

    final iconSize = (24.w).clamp(22.0, 34.0).toDouble();
    final horizontalPadding = (18.w).clamp(12.0, 28.0).toDouble();
    final verticalPadding = (12.h).clamp(6.0, 24.0).toDouble();

    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxContentWidth),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Image.asset(
                    'assets/icons/ic_back.png',
                    width: iconSize,
                    height: iconSize,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      capitalize(clearStrip(pokemon.name ?? '-')),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.appTextStyles.header2.copyWith(
                        color: AppTheme.appColors.white,
                        letterSpacing: 1.0,
                        fontSize: (22.w).clamp(20.0, 28.0).toDouble(),
                      ),
                    ),
                  ),
                ),
                BlocBuilder<FavoritePokemonBloc, FavoritePokemonState>(
                  builder: (context, state) {
                    final isFavorite = state.maybeWhen(
                      status: (isFavorite) => isFavorite,
                      orElse: () => false,
                    );

                    return IconButton(
                      onPressed: () {
                        context.read<FavoritePokemonBloc>().add(
                          FavoritePokemonEvent.toggle(pokemon: pokemon),
                        );
                      },
                      icon: isFavorite
                          ? Image.asset(
                              'assets/icons/ic_favorited.png',
                              width: iconSize,
                              height: iconSize,
                            )
                          : Image.asset(
                              'assets/icons/ic_favorite.png',
                              width: iconSize,
                              height: iconSize,
                              color: Colors.white,
                            ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailBottomPanel extends StatefulWidget {
  final PokemonEntity pokemon;

  const DetailBottomPanel({super.key, required this.pokemon});

  @override
  State<DetailBottomPanel> createState() => _DetailBottomPanelState();
}

class _DetailBottomPanelState extends State<DetailBottomPanel> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['ABOUT', 'STATS', 'MOVES', 'EVOLUTIONS'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxContentWidth = _responsiveMaxContentWidth(size.width);

    final panelHeight = (size.height * 0.63).clamp(430.0, 700.0);
    final panelRadius = (40.r).clamp(26.0, 40.0).toDouble();

    final horizontalPadding = (18.w).clamp(16.0, 32.0).toDouble();
    final verticalPadding = (20.h).clamp(12.0, 22.0).toDouble();
    final topInsetForImage = (size.height * 0.08).clamp(42.0, 72.0);

    return Align(
      alignment: Alignment.bottomCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxContentWidth),
        child: Container(
          height: panelHeight,
          decoration: BoxDecoration(
            color: AppTheme.appColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(panelRadius),
              topRight: Radius.circular(panelRadius),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: topInsetForImage),
              Row(
                spacing: 12.w,
                children: List.generate(_tabs.length, (index) {
                  return Expanded(
                    child: DetailTab(
                      text: _tabs[index],
                      isSelected: _selectedTabIndex == index,
                      onTap: () {
                        setState(() {
                          _selectedTabIndex = index;
                        });
                      },
                    ),
                  );
                }),
              ),
              SizedBox(height: (20.h).clamp(12.0, 24.0).toDouble()),
              Expanded(child: _buildTabContent(widget.pokemon)),
              BlocBuilder<ConnectivityCubit, ConnectivityState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    disconnected: () => Container(
                      margin: EdgeInsets.only(top: 6.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.warning, color: Colors.white),
                          SizedBox(width: 8.w),
                          Flexible(
                            child: Text(
                              "No Internet Connection",
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.appTextStyles.bodySmall.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(PokemonEntity pokemon) {
    switch (_selectedTabIndex) {
      case 0:
        return AboutTab(pokemon: pokemon);
      case 1:
        return StatsTab(stats: pokemon.stats ?? []);
      case 2:
        return MovesTab(pokemon: pokemon);
      case 3:
        return const EvolutionTab();
      default:
        return const SizedBox.shrink();
    }
  }
}

class DetailTab extends StatelessWidget {
  const DetailTab({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth.isFinite
            ? constraints.maxWidth
            : 90.0;

        final baseFontSize = (width * 0.15).clamp(12.0, 18.0).toDouble();
        final spacing = (6.h).clamp(4.0, 8.0).toDouble();
        final lineHeight = (2.6.h).clamp(2.0, 3.5).toDouble();

        return GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: (28.h).clamp(22.0, 34.0).toDouble(),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          // no maxLines + no ellipsis
                          style: AppTheme.appTextStyles.bodySmall.copyWith(
                            color: isSelected
                                ? AppTheme.appColors.black
                                : AppTheme.appColors.grey,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.w600,
                            fontSize: baseFontSize,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: spacing),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    curve: Curves.easeOut,
                    height: lineHeight,
                    width: isSelected
                        ? (width * 0.55).clamp(18.0, 46.0).toDouble()
                        : 0,
                    decoration: BoxDecoration(
                      color: AppTheme.appColors.black,
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
