import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokefy/domain/entity/gender/GenderRatioEntity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';
import 'package:pokefy/presentation/widgets/type_chip_detail.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/text_helper.dart';

class AboutTab extends StatelessWidget {
  final PokemonEntity pokemon;

  const AboutTab({super.key, required this.pokemon});

  String _formatKilograms(int? hectograms) {
    if (hectograms == null) return '-';
    final kilograms = hectograms / 10;
    return '${_formatNumber(kilograms)} kg';
  }

  String _formatMeters(int? decimeters) {
    if (decimeters == null) return '-';
    final meters = decimeters / 10;
    return '${_formatNumber(meters)} m';
  }

  String _formatNumber(double value) {
    return value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(1);
  }

  GenderRatioEntity _getGenderRatio(int? genderRate) {
    if (genderRate == null) {
      return const GenderRatioEntity(male: 0, female: 0, genderless: false);
    }

    if (genderRate == -1) {
      return const GenderRatioEntity(male: 0, female: 0, genderless: true);
    }

    final double female = (genderRate / 8.0) * 100;
    final double male = 100 - female;

    return GenderRatioEntity(male: male, female: female, genderless: false);
  }

  int calculateEggSteps(int hatchCounter) {
    return (hatchCounter + 1) * 255;
  }

  @override
  Widget build(BuildContext context) {
    final typeNames =
        pokemon.types
            ?.map((item) => item.type?.name?.toLowerCase() ?? 'unknown')
            .toList() ??
        [];

    return BlocBuilder<GetSpeciesBloc, GetSpeciesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Text(
            'Failed to load: $message',
            style: AppTheme.appTextStyles.bodySmall,
          ),
          loaded: (species) {
            final ratio = _getGenderRatio(species.genderRate);
            final maleFlex = (ratio.male * 10).round();
            final femaleFlex = (ratio.female * 10).round();

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_pokemon.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text('Types', style: AppTheme.appTextStyles.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    spacing: 5,
                    children: [
                      ...typeNames
                          .take(2)
                          .map(
                            (type) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: TypeChipDetail(type: type),
                            ),
                          ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/ic_weight.png',
                                  width: 14,
                                  height: 14,
                                  color: AppTheme.appColors.black,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  'Weight',
                                  style: AppTheme.appTextStyles.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.8),
                                border: Border.all(
                                  color: AppTheme.appColors.primary,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  _formatKilograms(pokemon.weight),
                                  style: AppTheme.appTextStyles.bodySmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/ic_height.png',
                                  width: 14,
                                  height: 14,
                                  color: AppTheme.appColors.black,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  'Height',
                                  style: AppTheme.appTextStyles.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.8),
                                border: Border.all(
                                  color: AppTheme.appColors.secondary,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  _formatMeters(pokemon.height),
                                  style: AppTheme.appTextStyles.bodySmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_ability.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Abilities',
                        style: AppTheme.appTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      ...(pokemon.abilities ?? []).map(
                        (ability) => Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.8),
                            border: Border.all(
                              color: AppTheme.appColors.warning,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            capitalize(
                              ability.ability?.name?.replaceAll('-', ' ') ??
                                  '-',
                            ),
                            style: AppTheme.appTextStyles.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_habitat.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text('Habitat', style: AppTheme.appTextStyles.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.8),
                      border: Border.all(
                        color: AppTheme.appColors.success,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      capitalize(
                        species.habitat?.name?.replaceAll('-', ' ') ?? '-',
                      ),
                      style: AppTheme.appTextStyles.bodySmall,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Breeding",
                    style: AppTheme.appTextStyles.header3.copyWith(
                      letterSpacing: 0.8
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/ic_gender_ratio.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Gender Rate',
                        style: AppTheme.appTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  if (ratio.genderless)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 10,
                            width: double.infinity,
                            color: AppTheme.appColors.grey,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Genderless',
                          style: AppTheme.appTextStyles.bodySmall,
                        ),
                      ],
                    )
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Row(
                              children: [
                                if (maleFlex > 0)
                                  Expanded(
                                    flex: maleFlex,
                                    child: Container(
                                      color: AppTheme.appColors.primary,
                                    ),
                                  ),
                                if (femaleFlex > 0)
                                  Expanded(
                                    flex: femaleFlex,
                                    child: Container(
                                      color: AppTheme.appColors.secondary,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Male ${ratio.male.toStringAsFixed(1)}%',
                              style: AppTheme.appTextStyles.bodySmall,
                            ),
                            Text(
                              'Female ${ratio.female.toStringAsFixed(1)}%',
                              style: AppTheme.appTextStyles.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_egg.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Egg Groups',
                        style: AppTheme.appTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      ...(species.eggGroups ?? []).map(
                        (egg) => Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.8),
                            border: Border.all(
                              color: AppTheme.appColors.danger,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            capitalize(egg.name ?? '-'),
                            style: AppTheme.appTextStyles.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/ic_hatch.png',
                        width: 14,
                        height: 14,
                        color: AppTheme.appColors.black,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Egg Cycle',
                        style: AppTheme.appTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.8),
                      border: Border.all(
                        color: AppTheme.appColors.secondary,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "${species.hatchCounter} (${calculateEggSteps(species.hatchCounter ?? 0)} steps)",
                      style: AppTheme.appTextStyles.bodySmall,
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
