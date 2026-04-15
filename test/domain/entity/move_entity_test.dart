import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/move/move_entity.dart';
import 'package:pokefy/domain/entity/move/move_info_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/version_group_detail/version_group_detail_entity.dart';

void main() {
  group('MoveEntity', () {
    const tMoveInfoEntity = MoveInfoEntity(name: 'mega-punch"', url: 'https://pokeapi.co/api/v2/move/5/');
    const tVersionGroupDetailEntity = VersionGroupDetailEntity(
      levelLearnedAt: 0,
      moveLearnMethod: SpeciesEntity(name: 'level-up', url: 'https://pokeapi.co/api/v2/move-learn-method/1/'),
      versionGroup: SpeciesEntity(name: 'red-blue', url: 'https://pokeapi.co/api/v2/version-group/1/'),
    );

    const tMoveEntity = MoveEntity(
      move: tMoveInfoEntity,
      versionGroupDetails: [
        tVersionGroupDetailEntity
      ],
    );

    final tJson = {
      'move': MoveInfoEntity(name: 'mega-punch"', url: 'https://pokeapi.co/api/v2/move/5/').toJson(),
      'version_group_details': [
        {
          'level_learned_at': 0,
          'move_learn_method': SpeciesEntity(name: 'level-up', url: 'https://pokeapi.co/api/v2/move-learn-method/1/').toJson(),
          'version_group': SpeciesEntity(name: 'red-blue', url: 'https://pokeapi.co/api/v2/version-group/1/').toJson(),
        }
      ],
    };

    test('should return a JSON map containing proper data', () {
      final result = tMoveEntity.toJson();
      final expectedJson = {
        'move': tMoveInfoEntity,
        'version_group_details': [
          tVersionGroupDetailEntity
        ],
      };

      expect(result, equals(expectedJson));
    });

    test('should return a valid model from JSON', () {
      final result = MoveEntity.fromJson(tJson);
      expect(result, equals(tMoveEntity));
    });
  });
}
