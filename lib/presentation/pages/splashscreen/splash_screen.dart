import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pokefy/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToHome();
  }

  Future<void> _goToHome() async {
    await Future.delayed(const Duration(seconds: 2, milliseconds: 500));
    if (!mounted) return;
    context.goNamed('home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.appColors.primary,
              AppTheme.appColors.white,
              AppTheme.appColors.white,
              AppTheme.appColors.white,
              AppTheme.appColors.white,
              AppTheme.appColors.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pokefy',
                    style: AppTheme.appTextStyles.iconAppText.copyWith(
                      fontSize: 42.sp,
                      color: AppTheme.appColors.primary,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Pokemon Encyclopedia App',
                    style: AppTheme.appTextStyles.bodyMedium.copyWith(
                      fontSize: 14.sp,
                      color: AppTheme.appColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: Text(
                  'Ver 1.0.0',
                  style: AppTheme.appTextStyles.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
