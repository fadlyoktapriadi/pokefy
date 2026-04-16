import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/pages/detail/detail_screen.dart';
import 'package:pokefy/presentation/pages/favorite/favorite_screen.dart';
import 'package:pokefy/presentation/pages/home/home_screen.dart';
import 'package:pokefy/presentation/pages/splashscreen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/detail',
        name: 'detail',
        builder: (context, state) {
          final pokemon = state.extra as PokemonEntity;
          return DetailScreen(pokemon: pokemon);
        },
      ),
      GoRoute(
        path: '/favorite',
        name: 'favorite',
        builder: (context, state) => const FavoriteScreen(),
      ),
    ],
    errorBuilder: (context, state) =>
    const Center(child: Text('Page Not Found')),
  );
}
