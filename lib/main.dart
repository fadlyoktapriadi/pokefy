import 'package:flutter/material.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/routing/app_router.dart';
import 'package:pokefy/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pokefy App',
      routerConfig: AppRouter.router,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
     );
  }
}