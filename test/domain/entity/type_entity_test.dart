import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/type/type_entity.dart';

void main() {
  group('TypeEntity', () {

    const tSpeciesEntity = SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/');

    const tTypeEntity = TypeEntity(
      slot: 0,
      type: tSpeciesEntity,
    );

    final tJson = {
      'slot': 0,
      'type': SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/').toJson(),
    };

    test('should return a JSON map containing proper data', () {
      final result = tTypeEntity.toJson();
      final expectedJson = {
        'slot': 0,
        'type': tSpeciesEntity,
      };

      expect(result, equals(expectedJson));
    });

    test('should return a valid model from JSON', () {
      final result = TypeEntity.fromJson(tJson);
      expect(result, equals(tTypeEntity));
    });
  });
}
