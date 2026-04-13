import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
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

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 165.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.w),
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
                Hero(
                  tag: "pokemon_${pokemon.id}",
                  child: (imageUrl == null || imageUrl.isEmpty)
                      ? Image.asset(
                    'assets/images/image_failed.png',
                    width: 110.w,
                    height: 110.h,
                    color: AppTheme.appColors.white,
                  )
                      : CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 130.w,
                    height: 130.h,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => SizedBox(
                      width: 130.w,
                      height: 130.h,
                      child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                    ),
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/image_failed.png',
                      width: 130.w,
                      height: 130.h,
                      color: AppTheme.appColors.white,
                    ),
                  ),
                ),

                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Text(
                    capitalize(clearStrip(pokemonName)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    textAlign: TextAlign.center,
                    style: AppTheme.appTextStyles.header3.copyWith(
                      color: AppTheme.appColors.white,
                    ),
                  ),
                ),
                 SizedBox(height: 6.h),
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
    );
  }
}
