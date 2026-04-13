import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokefy/domain/entity/stat/stat_entity.dart';
import 'package:pokefy/presentation/bloc/detail/type_defences/type_defences_bloc.dart';
import 'package:pokefy/presentation/widgets/type_chip_detail.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/text_helper.dart';

class StatsTab extends StatelessWidget {
  final List<StatEntity> stats;

  const StatsTab({super.key, required this.stats});

  Color colorByStat(String statName) {
    switch (statName.toLowerCase()) {
      case "hp":
        return AppTheme.appColors.danger;
      case "attack":
        return AppTheme.appColors.primary;
      case "defense":
        return AppTheme.appColors.secondary;
      case "special-attack":
        return AppTheme.appColors.info;
      case "special-defense":
        return AppTheme.appColors.warning;
      case "speed":
        return AppTheme.appColors.success;
      default:
        return AppTheme.appColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      children: [
        ...stats.map(
          (s) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _buildStatRow(
              s.stat?.name ?? 'Unknown',
              s.baseStat ?? 0,
              colorByStat(s.stat?.name ?? 'Unknown'),
            ),
          ),
        ),
        SizedBox(height: 24.h),
        Text('Type Defences', style: AppTheme.appTextStyles.header3),
        SizedBox(height: 8.h),
        BlocBuilder<TypeDefencesBloc, TypeDefencesState>(
          builder: (context, state) {
            return state.when(
              initial: () => Text(
                'No type defence data',
                style: AppTheme.appTextStyles.bodySmall.copyWith(
                  color: AppTheme.appColors.grey,
                ),
              ),
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (message) => Text(
                'Failed to load: $message',
                style: AppTheme.appTextStyles.bodySmall.copyWith(
                  color: AppTheme.appColors.danger,
                ),
              ),
              loaded: (strengths, vulnerability, resistances, immunities) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDefenceGroup(
                      title: 'Strengths Against',
                      types: strengths,
                      chipColor: AppTheme.appColors.secondary,
                    ),
                    SizedBox(height: 6.h),
                    _buildDefenceGroup(
                      title: 'Weaknesses To',
                      types: vulnerability,
                      chipColor: AppTheme.appColors.primary,
                    ),
                    SizedBox(height: 6.h),
                    _buildDefenceGroup(
                      title: 'Resistances To',
                      types: resistances,
                      chipColor: AppTheme.appColors.warning,
                    ),
                    SizedBox(height: 6.h),
                    _buildDefenceGroup(
                      title: 'Immunities To',
                      types: immunities,
                      chipColor: AppTheme.appColors.grey,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildStatRow(String title, int value, Color barColor) {
    return Row(
      children: [
        SizedBox(
          width: 105.w,
          child: Text(
            capitalize(title.replaceFirst('special-', 'Sp.')),
            style: AppTheme.appTextStyles.bodyMedium,
          ),
        ),
        SizedBox(
          width: 35.w,
          child: Text(
            value.toString(),
            style: AppTheme.appTextStyles.bodySmall.copyWith(
              color: AppTheme.appColors.grey,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 6.h,
            decoration: BoxDecoration(
              color: AppTheme.appColors.softGrey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: value / 195.w,
              child: Container(
                decoration: BoxDecoration(
                  color: barColor,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDefenceGroup({
    required String title,
    required List<String> types,
    required Color chipColor,
  }) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                color: chipColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTheme.appTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.appColors.white,
                ),
              ),
            ),
            if (types.isEmpty)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Center(
                  child: Text(
                    'None',
                    style: AppTheme.appTextStyles.bodySmall.copyWith(
                      color: AppTheme.appColors.grey,
                    ),
                  ),
                ),
              )
            else
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...(types).map((ability) => TypeChipDetail(type: ability)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
