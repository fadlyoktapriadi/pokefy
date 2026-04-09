import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';
import 'package:pokefy/theme/app_theme.dart';

class EvolutionTab extends StatelessWidget {
  const EvolutionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:  [
        Text(
          'Evolution Available',
          style: AppTheme.appTextStyles.header3
        ),
        BlocListener<EvolutionChainBloc, EvolutionChainState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loaded: (evolutionChain) {
                // Handle the loaded evolution chain data here
                debugPrint("Evolution Chain Loaded: ${evolutionChain.chain?.species?.name}");
              },
            );
          },
          child: Container(), // Replace with your actual UI for displaying evolution chain
        ),
      ],
    );
  }
}
