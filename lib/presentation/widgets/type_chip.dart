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
    final typeLabel = type.isEmpty ? 'Unknown' : '${type[0].toUpperCase()}${type.substring(1)}';

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth.isFinite ? constraints.maxWidth : 80.0;

        // Responsive sizing with safe bounds.
        final iconSize = (width * 0.12).clamp(10.0, 14.0);
        final horizontal = (width * 0.10).clamp(8.0, 12.0);
        final vertical = (width * 0.05).clamp(4.0, 6.0);
        final gap = (width * 0.03).clamp(2.0, 6.0);
        final fontSize = (width * 0.11).clamp(10.0, 12.0);

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: vertical.toDouble(),
            horizontal: horizontal.toDouble(),
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border.all(color: chipColor),
            borderRadius: BorderRadius.circular(20),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/types/$type.png',
                  width: iconSize.toDouble(),
                  height: iconSize.toDouble(),
                  color: chipColor,
                  errorBuilder: (_, _, _) => SizedBox(
                    width: iconSize.toDouble(),
                    height: iconSize.toDouble(),
                  ),
                ),
                SizedBox(width: gap.toDouble()),
                Text(
                  typeLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.appTextStyles.bodyXSmall.copyWith(
                    color: chipColor,
                    fontSize: fontSize.toDouble(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
