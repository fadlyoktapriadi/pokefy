import 'package:flutter/material.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/pages/detail/tab/about_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/evolution_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/moves_tab.dart';
import 'package:pokefy/presentation/pages/detail/tab/stats_tab.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/type_color.dart';

class DetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const DetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DetailBackground(pokemon: pokemon),
          DetailPokemonImage(pokemon: pokemon),
          DetailHeader(pokemon: pokemon),
          const DetailBottomPanel(),
        ],
      ),
    );
  }
}

class DetailBackground extends StatelessWidget {
  const DetailBackground({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final types = pokemon.types;
    final primaryType = (types == null || types.isEmpty)
        ? null
        : types.firstWhere((type) => type.slot == 1, orElse: () => types.first);
    final typeName = primaryType?.type?.name?.toLowerCase();

    final baseColor =
        typeColorMap[typeName ?? 'unknown'] ?? const Color(0xFF808080);

    final topColor = _lighten(baseColor, 0.10);
    final middleColor = _lighten(baseColor, 0.25);
    final bottomColor = _lighten(baseColor, 0.40);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [topColor, middleColor, bottomColor],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }

  Color _lighten(Color color, double amount) {
    final hsl = HSLColor.fromColor(color);
    final lightness = (hsl.lightness + amount).clamp(0.0, 1.0);
    return hsl.withLightness(lightness).toColor();
  }
}

class DetailPokemonImage extends StatelessWidget {
  const DetailPokemonImage({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final imageUrl = pokemon.sprites?.other?.home?.frontDefault;

    return Positioned(
      top: 120,
      left: 0,
      right: 0,
      child: Center(
        child: imageUrl == null || imageUrl.isEmpty
            ? Image.asset(
                'assets/images/image_failed.png',
                height: 280,
                fit: BoxFit.contain,
              )
            : Image.network(imageUrl, height: 280, fit: BoxFit.contain),
      ),
    );
  }
}

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(
                'assets/icons/ic_back.png',
                width: 28,
                height: 28,
                color: Colors.white,
              ),
            ),
            Text(
              pokemon.name ?? '-',
              style: AppTheme.appTextStyles.header2.copyWith(letterSpacing: 1),
            ),
            Image.asset(
              'assets/icons/ic_favorite.png',
              width: 28,
              height: 28,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class DetailBottomPanel extends StatefulWidget {
  const DetailBottomPanel({super.key});

  @override
  State<DetailBottomPanel> createState() => _DetailBottomPanelState();
}

class _DetailBottomPanelState extends State<DetailBottomPanel> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['ABOUT', 'STATS', 'MOVES', 'EVOLUTIONS'];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          color: AppTheme.appColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: AppTheme.appColors.softGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_tabs.length, (index) {
                return DetailTab(
                  text: _tabs[index],
                  isSelected: _selectedTabIndex == index,
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                );
              }),
            ),
            const SizedBox(height: 35),
            Expanded(child: _buildTabContent()),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return const AboutTab();
      case 1:
        return const StatsTab();
      case 2:
        return const MovesTab();
      case 3:
        return const EvolutionTab();
      default:
        return const SizedBox.shrink();
    }
  }
}

class DetailTab extends StatelessWidget {
  const DetailTab({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: AppTheme.appTextStyles.bodySmall.copyWith(
                color: isSelected
                    ? AppTheme.appColors.black
                    : AppTheme.appColors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                fontSize: 13,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 6),
            if (isSelected)
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: AppTheme.appColors.black,
                  shape: BoxShape.circle,
                ),
              )
            else
              const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
