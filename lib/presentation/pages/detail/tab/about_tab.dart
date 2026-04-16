import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';
import 'package:pokefy/presentation/widgets/type_chip_detail.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/detail_pokemon_utils.dart';
import 'package:pokefy/utils/text_helper.dart';

class AboutTab extends StatelessWidget {
  final PokemonEntity pokemon;

  const AboutTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final typeNames =
        pokemon.types
            ?.map((item) => item.type?.name?.toLowerCase() ?? 'unknown')
            .toList() ??
            <String>[];

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        // Jangan pakai contentMaxWidth fixed di sini supaya width mengikuti panel/tab parent.
        final horizontalPagePadding = clamp(8.w, 6, 24);
        final sectionGap = clamp(12.h, 10, 16);
        final rowGap = clamp(8.h, 6, 12);
        final boxPadding = clamp(10.w, 8, 12);
        final chipVPad = clamp(8.h, 6, 10);
        final chipHPad = clamp(24.w, 16, 26);
        final iconSize = clamp(14.w, 12, 16);

        final isWide = maxWidth >= 700;
        final contentWidth = maxWidth - (horizontalPagePadding * 2);
        final halfGap = clamp(12.w, 8, 14);
        final halfWidth = isWide
            ? ((contentWidth - halfGap) / 2).clamp(160.0, 420.0)
            : contentWidth;

        return BlocBuilder<GetSpeciesBloc, GetSpeciesState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (species) {
                final ratio = getGenderRatio(species.genderRate);
                final maleFlex = (ratio.male * 10).round();
                final femaleFlex = (ratio.female * 10).round();

                return ListView(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPagePadding),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/ic_pokemon.png',
                          width: iconSize,
                          height: iconSize,
                          color: AppTheme.appColors.black,
                        ),
                        SizedBox(width: 6.w),
                        Text('Types', style: AppTheme.appTextStyles.bodyMedium),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Wrap(
                      spacing: 6.w,
                      runSpacing: 6.h,
                      children: [
                        ...typeNames.take(2).map((type) => TypeChipDetail(type: type)),
                      ],
                    ),

                    SizedBox(height: sectionGap),

                    Wrap(
                      spacing: halfGap,
                      runSpacing: halfGap,
                      children: [
                        SizedBox(
                          width: halfWidth,
                          child: _buildInfoBox(
                            iconPath: 'assets/icons/ic_weight.png',
                            title: 'Weight',
                            value: formatKilograms(pokemon.weight),
                            borderColor: AppTheme.appColors.primary,
                            iconSize: iconSize,
                            rowGap: rowGap,
                            boxPadding: boxPadding,
                          ),
                        ),
                        SizedBox(
                          width: halfWidth,
                          child: _buildInfoBox(
                            iconPath: 'assets/icons/ic_height.png',
                            title: 'Height',
                            value: formatMeters(pokemon.height),
                            borderColor: AppTheme.appColors.secondary,
                            iconSize: iconSize,
                            rowGap: rowGap,
                            boxPadding: boxPadding,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: sectionGap),

                    _buildSectionTitle(
                      iconPath: 'assets/icons/ic_ability.png',
                      title: 'Abilities',
                      iconSize: iconSize,
                    ),
                    SizedBox(height: rowGap),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        ...(pokemon.abilities ?? []).map(
                              (ability) => _buildChip(
                            label: capitalize(
                              ability.ability?.name?.replaceAll('-', ' ') ?? '-',
                            ),
                            borderColor: AppTheme.appColors.warning,
                            vPad: chipVPad,
                            hPad: chipHPad,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: sectionGap),

                    _buildSectionTitle(
                      iconPath: 'assets/icons/ic_habitat.png',
                      title: 'Habitat',
                      iconSize: iconSize,
                    ),
                    SizedBox(height: rowGap),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        _buildChip(
                          label: capitalize(
                            species.habitat?.name?.replaceAll('-', ' ') ?? '-',
                          ),
                          borderColor: AppTheme.appColors.success,
                          vPad: chipVPad,
                          hPad: chipHPad,
                        ),
                      ],
                    ),

                    SizedBox(height: clamp(14.h, 12, 18)),
                    Text(
                      'Breeding',
                      style: AppTheme.appTextStyles.header3.copyWith(letterSpacing: 0.8),
                    ),
                    SizedBox(height: rowGap),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/ic_gender_ratio.png',
                          width: iconSize,
                          height: iconSize,
                          color: AppTheme.appColors.black,
                        ),
                        SizedBox(width: 6.w),
                        Text('Gender Rate', style: AppTheme.appTextStyles.bodyMedium),
                      ],
                    ),
                    SizedBox(height: sectionGap),

                    if (ratio.genderless)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: clamp(10.h, 8, 12),
                              width: double.infinity,
                              color: AppTheme.appColors.grey,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text('Genderless', style: AppTheme.appTextStyles.bodySmall),
                        ],
                      )
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              height: clamp(10.h, 8, 12),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  if (maleFlex > 0)
                                    Expanded(
                                      flex: maleFlex,
                                      child: Container(color: AppTheme.appColors.primary),
                                    ),
                                  if (femaleFlex > 0)
                                    Expanded(
                                      flex: femaleFlex,
                                      child: Container(color: AppTheme.appColors.secondary),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 6.h),
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

                    SizedBox(height: sectionGap),

                    _buildSectionTitle(
                      iconPath: 'assets/icons/ic_egg.png',
                      title: 'Egg Groups',
                      iconSize: iconSize,
                    ),
                    SizedBox(height: rowGap),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        ...(species.eggGroups ?? []).map(
                              (egg) => _buildChip(
                            label: capitalize(egg.name ?? '-'),
                            borderColor: AppTheme.appColors.danger,
                            vPad: chipVPad,
                            hPad: chipHPad,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: sectionGap),

                    _buildSectionTitle(
                      iconPath: 'assets/icons/ic_hatch.png',
                      title: 'Egg Cycle',
                      iconSize: iconSize,
                    ),
                    SizedBox(height: rowGap),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        _buildChip(
                          label:
                          '${species.hatchCounter} (${calculateEggSteps(species.hatchCounter ?? 0)} steps)',
                          borderColor: AppTheme.appColors.secondary,
                          vPad: chipVPad,
                          hPad: chipHPad,
                        ),
                      ],
                    ),

                    SizedBox(height: clamp(24.h, 18, 30)),
                  ],
                );
              },
              error: (_) => Text(
                'Something went wrong while loading species data.',
                style: AppTheme.appTextStyles.bodySmall,
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSectionTitle({
    required String iconPath,
    required String title,
    required double iconSize,
  }) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: iconSize,
          height: iconSize,
          color: AppTheme.appColors.black,
        ),
        SizedBox(width: 6.w),
        Text(title, style: AppTheme.appTextStyles.bodyMedium),
      ],
    );
  }

  Widget _buildInfoBox({
    required String iconPath,
    required String title,
    required String value,
    required Color borderColor,
    required double iconSize,
    required double rowGap,
    required double boxPadding,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(iconPath: iconPath, title: title, iconSize: iconSize),
        SizedBox(height: rowGap),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(boxPadding),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border.all(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.appTextStyles.bodySmall,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChip({
    required String label,
    required Color borderColor,
    required double vPad,
    required double hPad,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: vPad, horizontal: hPad),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        border: Border.all(color: borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTheme.appTextStyles.bodySmall,
      ),
    );
  }
}
