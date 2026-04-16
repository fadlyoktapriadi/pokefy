import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/presentation/bloc/favorite/favorite_pokemon_bloc.dart';
import 'package:pokefy/presentation/widgets/item_pokemon.dart';
import 'package:pokefy/theme/app_theme.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late final FavoritePokemonBloc _favoriteBloc;

  @override
  void initState() {
    super.initState();
    _favoriteBloc = di.locator<FavoritePokemonBloc>()
      ..add(const FavoritePokemonEvent.loadAll());
  }

  @override
  void dispose() {
    _favoriteBloc.close();
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
    final headerIconSize = (24.w).clamp(20.0, 30.0).toDouble();

    return BlocProvider.value(
      value: _favoriteBloc,
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
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Image.asset(
                              'assets/icons/ic_back.png',
                              width: headerIconSize,
                              height: headerIconSize,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Text(
                              "Favorite Pokemon",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.appTextStyles.header2.copyWith(
                                color: AppTheme.appColors.black,
                                fontSize: (22.sp).clamp(18.0, 28.0).toDouble(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (12.h).clamp(8.0, 16.0).toDouble()),
                      Expanded(
                        child: BlocBuilder<FavoritePokemonBloc, FavoritePokemonState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () =>
                              const Center(child: CircularProgressIndicator()),
                              loading: () =>
                              const Center(child: CircularProgressIndicator()),
                              loaded: (listPokemon) {
                                if (listPokemon.isEmpty) {
                                  return Center(
                                    child: Text(
                                      'No favorite pokemon yet.',
                                      textAlign: TextAlign.center,
                                      style: AppTheme.appTextStyles.header3,
                                    ),
                                  );
                                }

                                return LayoutBuilder(
                                  builder: (context, constraints) {
                                    final cardExtent =
                                    _responsiveCardExtent(constraints.maxWidth);

                                    return GridView.builder(
                                      gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: cardExtent,
                                        crossAxisSpacing:
                                        (10.w).clamp(8.0, 16.0).toDouble(),
                                        mainAxisSpacing:
                                        (10.h).clamp(8.0, 16.0).toDouble(),
                                        childAspectRatio: 0.8,
                                      ),
                                      itemCount: listPokemon.length,
                                      itemBuilder: (context, index) {
                                        return ItemPokemon(
                                          pokemon: listPokemon[index],
                                          onTap: () async {
                                            await context.pushNamed(
                                              'detail',
                                              extra: listPokemon[index],
                                            );

                                            if (context.mounted) {
                                              context.read<FavoritePokemonBloc>().add(
                                                const FavoritePokemonEvent.loadAll(),
                                              );
                                            }
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              error: (_) => Center(
                                child: Text(
                                  'Something went wrong while loading favorite data.',
                                  textAlign: TextAlign.center,
                                  style: AppTheme.appTextStyles.bodySmall,
                                ),
                              ),
                              status: (_) => const SizedBox.shrink(),
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
                                  SizedBox(width: 8.w),
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
