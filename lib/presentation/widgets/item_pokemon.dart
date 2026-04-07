import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                height: 165,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
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
                (imageUrl == null || imageUrl.isEmpty)
                    ? Image.asset(
                        'assets/images/image_failed.png',
                        width: 130,
                        height: 130,
                      )
                    : CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: 130,
                        height: 130,
                        fit: BoxFit.contain,
                        placeholder: (context, url) => const SizedBox(
                          width: 130,
                          height: 130,
                          child: Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                        errorWidget: (context, url, error) => Image.asset(
                          'assets/images/image_failed.png',
                          width: 130,
                          height: 130,
                        ),
                      ),

                const SizedBox(height: 12),
                Text(
                  capitalize(pokemonName),
                  style: AppTheme.appTextStyles.header3.copyWith(
                    color: AppTheme.appColors.white,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...typeNames.take(2).map(
                      (type) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: TypeChip(type: type),
                      ),
                    ),
                    SvgPicture.asset(
                      pokemon.sprites?.frontFemale != null
                          ? 'assets/icons/ic_female.svg'
                          : 'assets/icons/ic_male.svg',
                      width: 26,
                      height: 26,
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
