import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';
import 'package:pokefy/presentation/widgets/item_pokemon.dart';
import 'package:pokefy/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final GetPokemonBloc _getPokemonBloc;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _getPokemonBloc = di.locator<GetPokemonBloc>()
      ..add(GetPokemonEvent.getListPokemon());
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final threshold = _scrollController.position.maxScrollExtent * 0.8;
    if (_scrollController.position.pixels >= threshold) {
      _getPokemonBloc.add(const GetPokemonEvent.fetchNextPage());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _getPokemonBloc.close();
    super.dispose();
  }

  double _responsiveMaxContentWidth(double screenWidth) {
    if (screenWidth >= 1600) return 1300;
    if (screenWidth >= 1200) return 1100;
    if (screenWidth >= 900) return 920;
    return screenWidth;
  }

  double _responsiveCardExtent(double width) {
    if (width >= 1200) return 250;
    if (width >= 900) return 230;
    if (width >= 650) return 210;
    return 190;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxContentWidth = _responsiveMaxContentWidth(screenWidth);
    final verticalPadding = (8.h).clamp(6.0, 14.0).toDouble();
    final horizontalPadding = (18.w).clamp(12.0, 28.0).toDouble();
    final iconSize = (screenWidth * 0.08).clamp(24.0, 34.0).toDouble();

    return BlocProvider.value(
      value: _getPokemonBloc,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFebf4f5), Color(0xFFb5c6e0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxContentWidth),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: verticalPadding,
                    horizontal: horizontalPadding,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Pokefy",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.appTextStyles.iconAppText.copyWith(
                                color: AppTheme.appColors.primary,
                                fontSize: (28.sp).clamp(24.0, 38.0).toDouble(),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          IconButton(
                            onPressed: () => context.pushNamed('favorite'),
                            icon: Image.asset(
                              "assets/icons/ic_favorite_list.png",
                              width: iconSize,
                              height: iconSize,
                              color: AppTheme.appColors.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (18.h).clamp(12.0, 24.0).toDouble()),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What Are You Looking For ?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.appTextStyles.header2.copyWith(
                            color: AppTheme.appColors.black,
                            fontSize: (22.sp).clamp(18.0, 28.0).toDouble()
                          ),
                        ),
                      ),
                      SizedBox(height: (12.h).clamp(8.0, 16.0).toDouble()),
                      Expanded(
                        child: BlocBuilder<GetPokemonBloc, GetPokemonState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () =>
                              const Center(child: CircularProgressIndicator()),
                              loading: () =>
                              const Center(child: CircularProgressIndicator()),
                              loaded: (listPokemon, hasReachedMax, isLoadingMore) {
                                final itemCount = isLoadingMore && !hasReachedMax
                                    ? listPokemon.length + 1
                                    : listPokemon.length;

                                return LayoutBuilder(
                                  builder: (context, constraints) {
                                    final cardExtent =
                                    _responsiveCardExtent(constraints.maxWidth);

                                    return GridView.builder(
                                      controller: _scrollController,
                                      gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: cardExtent,
                                        crossAxisSpacing:
                                        (10.w).clamp(8.0, 16.0).toDouble(),
                                        mainAxisSpacing:
                                        (10.h).clamp(8.0, 16.0).toDouble(),
                                        childAspectRatio: 0.8,
                                      ),
                                      itemCount: itemCount,
                                      itemBuilder: (context, index) {
                                        if (index >= listPokemon.length) {
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }

                                        return ItemPokemon(
                                          pokemon: listPokemon[index],
                                          onTap: () async {
                                            final selected = listPokemon[index];
                                            final imageUrl = selected
                                                .sprites
                                                ?.other
                                                ?.home
                                                ?.frontDefault;

                                            if (imageUrl != null &&
                                                imageUrl.isNotEmpty) {
                                              await precacheImage(
                                                CachedNetworkImageProvider(imageUrl),
                                                context,
                                              );
                                            }

                                            if (context.mounted) {
                                              context.pushNamed(
                                                'detail',
                                                extra: selected,
                                              );
                                            }
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              error: (message) => Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Lottie.asset(
                                        "assets/animations/not_found.json",
                                        width: (200.w).clamp(140.0, 260.0).toDouble(),
                                        height: (200.h).clamp(140.0, 260.0).toDouble(),
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 14.h),
                                      Text(
                                        "Failed to load pokemons. Please try again.",
                                        textAlign: TextAlign.center,
                                        style: AppTheme.appTextStyles.bodyMedium,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _getPokemonBloc.add(
                                            GetPokemonEvent.getListPokemon(),
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: 12.h),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 8.h,
                                            horizontal: 16.w,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppTheme.appColors.primary,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            "Retry",
                                            style: AppTheme.appTextStyles.bodyMedium
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      BlocBuilder<ConnectivityCubit, ConnectivityState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            disconnected: () => Container(
                              margin: EdgeInsets.only(top: 8.h),
                              padding: EdgeInsets.symmetric(
                                vertical: 8.h,
                                horizontal: 10.w,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.warning, color: Colors.white),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      "No Internet Connection",
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTheme.appTextStyles.bodySmall
                                          .copyWith(color: Colors.white),
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
            ),
          ),
        ),
      ),
    );
  }
}
