import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';
import 'package:pokefy/presentation/widgets/item_pokemon.dart';
import 'package:pokefy/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.locator<GetPokemonBloc>()..add(GetPokemonEvent.getListPokemon()),
      child: BlocListener<GetPokemonBloc, GetPokemonState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (listPokemon) {
                debugPrint("DEBUG POKEMON LOADED: ${listPokemon.length} items found");
                debugPrint("DEBUG POKEMON DATA: ${listPokemon.map((e) => e.name).toList()}");
              },
              error: (message) {
                debugPrint("DEBUG POKEMON ERROR: $message");
              },
              orElse: () {},
            );
          },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppTheme.appColors.white,
                  AppTheme.appColors.white.withValues(alpha: 0.8),
                  AppTheme.appColors.white
                ],
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Pokefy", style: AppTheme.appTextStyles.iconAppText),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "What Are You Looking \nFor ?",
                        style: AppTheme.appTextStyles.header1.copyWith(
                          color: AppTheme.appColors.black
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: const Icon(Icons.search),
                          contentPadding: const EdgeInsets.symmetric(vertical: 0),
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
                          fillColor: AppTheme.appColors.white
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              childAspectRatio: 0.86,
                            ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ItemPokemon();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
