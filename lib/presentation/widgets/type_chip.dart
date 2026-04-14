import 'package:flutter/material.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/type_color.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({super.key, required this.type});

  final String type;

  static const Map<String, Color> _typeColorMap = typeColorMap;

  @override
  Widget build(BuildContext context) {
    final chipColor = _typeColorMap[type] ?? const Color(0xFF808080);
    final typeLabel = type.isEmpty
        ? 'Unknown'
        : type[0].toUpperCase() + type.substring(1);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        border: Border.all(color: chipColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/types/$type.png',
            width: 10,
            height: 10,
            color: chipColor,
            errorBuilder: (_, _, _) => const SizedBox(width: 10, height: 10),
          ),
          const SizedBox(width: 2),
          Text(
            typeLabel,
            style: AppTheme.appTextStyles.bodyXSmall.copyWith(color: chipColor),
          ),
        ],
      ),
    );
  }
}
