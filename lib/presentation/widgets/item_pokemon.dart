import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/widgets/type_chip.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/text_helper.dart';
import 'package:pokefy/utils/type_color.dart';

class ItemPokemon extends StatelessWidget {
  const ItemPokemon({super.key, required this.pokemon, this.onTap});

  final PokemonEntity pokemon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final typeNames =
        pokemon.types
            ?.map((item) => item.type?.name?.toLowerCase() ?? 'unknown')
            .toList() ??
            [];

    final pokemonName = pokemon.name ?? '-';
    final imageUrl = pokemon.sprites?.other?.home?.frontDefault;

    final baseColor =
        typeColorMap[typeNames.isNotEmpty ? typeNames.first : 'unknown'] ??
            const Color(0xFF808080);

    return LayoutBuilder(
      builder: (context, constraints) {
        final cardW = constraints.maxWidth;
        final cardH = constraints.maxHeight;

        final imageSize = (cardW * 0.62).clamp(86.0, 150.0);
        final gradientHeight = (cardH * 0.72).clamp(120.0, 210.0);
        final titleFontSize = (cardW * 0.10).clamp(13.0, 18.0);
        final topSpacing = (cardH * 0.06).clamp(8.0, 18.0);
        final betweenSpacing = (cardH * 0.04).clamp(6.0, 12.0);

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              color: Colors.transparent,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: gradientHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular((cardW * 0.16).clamp(18.0, 36.0)),
                        gradient: LinearGradient(
                          stops: const [0.6, 1.0],
                          colors: [baseColor, AppTheme.appColors.white],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: topSpacing),
                      Hero(
                        tag: "pokemon_${pokemon.id}",
                        child: (imageUrl == null || imageUrl.isEmpty)
                            ? Image.asset(
                          'assets/images/image_failed.png',
                          width: imageSize,
                          height: imageSize,
                          color: AppTheme.appColors.white,
                        )
                            : CachedNetworkImage(
                          imageUrl: imageUrl,
                          width: imageSize,
                          height: imageSize,
                          fit: BoxFit.contain,
                          fadeInDuration: Duration.zero,
                          fadeOutDuration: Duration.zero,
                          placeholder: (context, url) => SizedBox(
                            width: imageSize,
                            height: imageSize,
                            child: const Center(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/image_failed.png',
                            width: imageSize,
                            height: imageSize,
                            color: AppTheme.appColors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: (betweenSpacing * 1.2).clamp(16.0, 24.0)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: (cardW * 0.08).clamp(8.0, 16.0)),
                        child: Text(
                          capitalize(clearStrip(pokemonName)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppTheme.appTextStyles.header3.copyWith(
                            color: AppTheme.appColors.white,
                            fontSize: titleFontSize,
                          ),
                        ),
                      ),
                      SizedBox(height: (betweenSpacing * 1.2).clamp(16.0, 24.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...typeNames.take(2).map(
                                (type) => Padding(
                              padding: EdgeInsets.only(right: 4.w),
                              child: TypeChip(type: type),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
