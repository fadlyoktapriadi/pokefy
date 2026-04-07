import 'package:flutter/material.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      children: [
        _buildStatRow('HP', 55, const Color(0xFFE86A6B)),
        const SizedBox(height: 18),
        _buildStatRow('Attack', 46, const Color(0xFF72D27A)),
        const SizedBox(height: 18),
        _buildStatRow('Defense', 46, const Color(0xFF72D27A)),
        const SizedBox(height: 18),
        _buildStatRow('Sp.Atk', 33, const Color(0xFF72D27A)),
        const SizedBox(height: 18),
        _buildStatRow('Sp.Def', 44, const Color(0xFF72D27A)),
        const SizedBox(height: 18),
        _buildStatRow('Speed', 34, const Color(0xFFE86A6B)),
      ],
    );
  }

  Widget _buildStatRow(String title, int value, Color barColor) {
    return Row(
      children: [
        SizedBox(width: 70, child: Text(title, style: TextStyle(color: Colors.grey[500], fontSize: 14))),
        SizedBox(width: 35, child: Text(value.toString(), style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
        Expanded(
          child: Container(
            height: 4,
            decoration: BoxDecoration(color: const Color(0xFF333333), borderRadius: BorderRadius.circular(10)),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: value / 100,
              child: Container(decoration: BoxDecoration(color: barColor, borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
      ],
    );
  }
}
