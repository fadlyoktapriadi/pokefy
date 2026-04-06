import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokefy/presentation/pages/home/home_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomeScreen(),
      ),
    ],
    errorBuilder: (context, state) =>
        const Center(child: Text('Page Not Found')),
  );
}
