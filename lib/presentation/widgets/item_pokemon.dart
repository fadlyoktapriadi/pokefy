import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokefy/theme/app_theme.dart';

class ItemPokemon extends StatelessWidget {
  const ItemPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                gradient: LinearGradient(
                  stops: const [0.6, 1.0],
                  colors: [
                    Color(0xFF6890F0),
                    AppTheme.appColors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/psyduck.png",
                width: 130,
                height: 130,
              ),
              SizedBox(height: 12),
              Text(
                "Psyduck",
                style: AppTheme.appTextStyles.header3.copyWith(
                  color: AppTheme.appColors.white,
                ),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.8),
                      border: Border.all(
                        color: Color(0xFF6890F0),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/types/water.png",
                          width: 10,
                          height: 10,
                          color: Color(0xFF6890F0),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          "Water",
                          style: AppTheme.appTextStyles.bodyXSmall.copyWith(
                            color: Color(0xFF6890F0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.8),
                      border: Border.all(
                        color: Color(0xFFA040A0),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Poison",
                      style: AppTheme.appTextStyles.bodyXSmall.copyWith(
                        color: Color(0xFFA040A0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(
                    "assets/icons/ic_male.svg",
                    width: 26,
                    height: 26,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
