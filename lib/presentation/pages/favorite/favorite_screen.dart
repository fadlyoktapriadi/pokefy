import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokefy/di/injection.dart' as di;
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
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Image.asset(
                          'assets/icons/ic_back.png',
                          width: 24,
                          height: 24,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 12),
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
                  const SizedBox(height: 12),
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
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
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

                                    // Refresh after coming back from detail
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
