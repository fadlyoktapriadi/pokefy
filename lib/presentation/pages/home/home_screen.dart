import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokefy/di/injection.dart' as di;
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _getPokemonBloc,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFebf4f5), Color(0xFFb5c6e0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 18.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pokefy", style: AppTheme.appTextStyles.iconAppText),
                      Image.asset(
                        "assets/icons/ic_favorite_list.png",
                        width: 32,
                        height: 32,
                        color: AppTheme.appColors.secondary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What Are You Looking \nFor ?",
                      style: AppTheme.appTextStyles.header1.copyWith(
                        color: AppTheme.appColors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: AppTheme.appColors.softGrey),
                        suffixIcon: Icon(Icons.search, color: AppTheme.appColors.softGrey),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0 , horizontal: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppTheme.appColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
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

                            return GridView.builder(
                              controller: _scrollController,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 0.86,
                                  ),
                              itemCount: itemCount,
                              itemBuilder: (context, index) {
                                if (index >= listPokemon.length) {
                                  return const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }

                                return ItemPokemon(pokemon: listPokemon[index]);
                              },
                            );
                          },
                          error: (message) => Center(
                            child: Text(
                              message,
                              textAlign: TextAlign.center,
                              style: AppTheme.appTextStyles.bodySmall,
                            ),
                          ),
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
