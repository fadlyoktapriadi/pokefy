import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';
import 'package:pokefy/theme/app_theme.dart';

class EvolutionTab extends StatelessWidget {
  const EvolutionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Evolution Chain', style: AppTheme.appTextStyles.header3),
          SizedBox(height: 14.h),
          Expanded(
            child: BlocBuilder<EvolutionChainBloc, EvolutionChainState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox.shrink(),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (evolutionChain) {
                    final chain = evolutionChain.chain;
                    if (chain == null) {
                      return Center(child: Text('No evolution data', style: AppTheme.appTextStyles.bodyMedium));
                    }

                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: _buildEvolutionChain(chain),
                    );
                  },
                  error: (_) => Text(
                    'Something went wrong while loading species data.',
                    style: AppTheme.appTextStyles.bodySmall,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEvolutionChain(ChainEvolutionEntity chainEvolution) {
    final speciesName = chainEvolution.species?.name ?? 'Unknown';
    final evolvesTo = chainEvolution.evolvesTo ?? [];

    if (evolvesTo.isEmpty) {
      return Center(
        child: Column(
          children: [
            PokemonImageWidget(pokemon: chainEvolution.pokemon),
            Text(
              speciesName.toUpperCase(),
              style: AppTheme.appTextStyles.bodyMedium,
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: evolvesTo.map<Widget>((nextEvolution) {
        final nextSpeciesName = nextEvolution.species?.name ?? 'Unknown';
        final minLevel = nextEvolution.evolutionDetails?.isNotEmpty == true
            ? nextEvolution.evolutionDetails!.first.minLevel
            : null;
        final levelText = minLevel != null ? 'Lvl $minLevel' : '???';

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    PokemonImageWidget(pokemon: chainEvolution.pokemon),
                    Text(
                      speciesName.toUpperCase(),
                      style: AppTheme.appTextStyles.bodyMedium,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.arrow_forward, color: Colors.grey),
                    Text(levelText, style: AppTheme.appTextStyles.bodySmall),
                  ],
                ),
                Column(
                  children: [
                    PokemonImageWidget(pokemon: nextEvolution.pokemon),
                    Text(
                      nextSpeciesName.toUpperCase(),
                      style: AppTheme.appTextStyles.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),
            if ((nextEvolution.evolvesTo as List<dynamic>? ?? []).isNotEmpty)
              _buildEvolutionChain(nextEvolution),
          ],
        );
      }).toList(),
    );
  }
}

class PokemonImageWidget extends StatelessWidget {
  final PokemonEntity? pokemon;

  const PokemonImageWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final imageUrl = pokemon?.sprites?.other?.home?.frontDefault ?? "";

    return Image.network(
      imageUrl,
      width: 100.w,
      height: 100.h,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
    );
  }
}
