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

  @override
  Widget build(BuildContext context) {
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
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 8.h, horizontal: 18.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Image.asset(
                          'assets/icons/ic_back.png',
                          width: 24.w,
                          height: 24.h,
                          color: Colors.black,
                        ),
                      ),
                       SizedBox(width: 12.w),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Favorite Pokemon",
                          style: AppTheme.appTextStyles.header2.copyWith(
                            color: AppTheme.appColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Expanded(
                    child: BlocBuilder<FavoritePokemonBloc,
                        FavoritePokemonState>(
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
                                  style: AppTheme.appTextStyles.header3,
                                ),
                              );
                            }

                            return GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.w,
                                mainAxisSpacing: 10.h,
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
                          error: (message) =>
                              Center(
                                child: Text(
                                  message,
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
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.warning, color: Colors.white),
                              SizedBox(width: 8.w),
                              Text(
                                "No Internet Connection",
                                style: AppTheme.appTextStyles.bodySmall
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
