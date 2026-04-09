import 'package:flutter/material.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/type_color.dart';

class TypeChipDetail extends StatelessWidget {
  const TypeChipDetail({super.key, required this.type});

  final String type;

  static const Map<String, Color> _typeColorMap = typeColorMap;

  @override
  Widget build(BuildContext context) {
    final chipColor = _typeColorMap[type] ?? const Color(0xFF808080);
    final typeLabel = type.isEmpty
        ? 'Unknown'
        : type[0].toUpperCase() + type.substring(1);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        border: Border.all(color: chipColor, width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
            child: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Image.asset(
                        'assets/icons/types/$type.png',
                        width: 14,
                        height: 14,
                        color: chipColor,
                        errorBuilder: (_, __, ___) => const SizedBox(width: 14, height: 14),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: typeLabel,
                    style: TextStyle(
                      color: chipColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
