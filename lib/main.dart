import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/routing/app_router.dart';
import 'package:pokefy/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.locator<ConnectivityCubit>()..start(),
      child: MaterialApp.router(
        title: 'Pokefy App',
        routerConfig: AppRouter.router,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}