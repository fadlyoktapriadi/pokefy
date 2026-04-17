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

  double _responsiveMaxContentWidth(double screenWidth) {
    if (screenWidth >= 1600) return 1300;
    if (screenWidth >= 1200) return 1100;
    if (screenWidth >= 900) return 920;
    return screenWidth;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final maxContentWidth = _responsiveMaxContentWidth(size.width);

    final horizontalPadding = (18.w).clamp(12.0, 32.0).toDouble();
    final verticalPadding = (14.h).clamp(10.0, 28.0).toDouble();

    final appNameSize = (size.width * 0.085).clamp(36.0, 72.0).toDouble();
    final subtitleSize = (size.width * 0.03).clamp(12.0, 20.0).toDouble();
    final versionSize = (size.width * 0.022).clamp(10.0, 14.0).toDouble();

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
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Column(
                  children: [
                    const Spacer(flex: 2),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Pokefy',
                        maxLines: 1,
                        style: AppTheme.appTextStyles.iconAppText.copyWith(
                          fontSize: appNameSize,
                          color: AppTheme.appColors.primary,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(height: (4.h).clamp(2.0, 10.0).toDouble()),
                    Text(
                      'Pokemon Encyclopedia App',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.appTextStyles.bodyMedium.copyWith(
                        fontSize: subtitleSize,
                        color: AppTheme.appColors.black,
                      ),
                    ),
                    const Spacer(flex: 3),
                    Text(
                      'Ver 1.0.0',
                      style: AppTheme.appTextStyles.bodySmall.copyWith(
                        fontSize: versionSize,
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
