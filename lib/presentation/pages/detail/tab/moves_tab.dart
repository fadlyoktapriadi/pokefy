import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/presentation/bloc/detail/move/get_move_bloc.dart';
import 'package:pokefy/theme/app_theme.dart';
import 'package:pokefy/utils/text_helper.dart';

class MovesTab extends StatelessWidget {
  final PokemonEntity pokemon;

  const MovesTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMoveBloc, GetMoveState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text('Error: $message')),
          loaded: (groupedMoves) {
            if (groupedMoves.isEmpty) {
              return const Center(child: Text('No moves available.'));
            }

            return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: groupedMoves.keys.length,
              itemBuilder: (context, index) {
                final category = groupedMoves.keys.elementAt(index);
                final moves = groupedMoves[category]!;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.toUpperCase(),
                        style: AppTheme.appTextStyles.header3,
                      ),
                      const SizedBox(height: 12),
                      Table(
                        border: TableBorder(
                          horizontalInside: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                          3: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(
                            children: [
                              _buildTableHeader('Name'),
                              _buildTableHeader('Lvl/Req'),
                              _buildTableHeader('Pwr'),
                              _buildTableHeader('Acc'),
                            ],
                          ),
                          ...moves.map((moveData) {
                            final detail = moveData.detail;
                            final versionDetails =
                                moveData.move.versionGroupDetails;
                            final level = versionDetails?.isNotEmpty == true
                                ? versionDetails!.first.levelLearnedAt
                                : 0;
                            final levelStr = level != null && level > 0
                                ? level.toString()
                                : '-';

                            return TableRow(
                              children: [
                                _buildTableCell(
                                    detail.name?.replaceAll('-', ' ') ?? '-'),
                                _buildTableCell(levelStr),
                                _buildTableCell(detail.power?.toString() ?? '-'),
                                _buildTableCell(detail.accuracy?.toString() ?? '-'),
                              ],
                            );
                          }).toList(),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: AppTheme.appTextStyles.bodyMedium.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        capitalize(text),
        style: AppTheme.appTextStyles.bodySmall,
      ),
    );
  }
}
