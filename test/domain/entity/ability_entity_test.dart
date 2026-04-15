import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/ability/ability_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

void main() {
  group('AbilityEntity', () {
    const tSpeciesEntity = SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/');

    const tAbilityEntity = AbilityEntity(
      ability: tSpeciesEntity,
      isHidden: false,
      slot: 1,
    );

    final tJson = {
      'ability': SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/').toJson(),
      'is_hidden': false,
      'slot': 1,
    };

    test('should return a JSON map containing proper data', () {
      final result = tAbilityEntity.toJson();
      final expectedJson = {
        'ability': tSpeciesEntity,
        'is_hidden': false,
        'slot': 1,
      };
      expect(result, equals(expectedJson));
    });

    test('should return a valid model from JSON', () {
      final result = AbilityEntity.fromJson(tJson);
      expect(result, equals(tAbilityEntity));
    });
  });
}
