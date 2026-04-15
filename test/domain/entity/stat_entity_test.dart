import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/stat/stat_entity.dart';

void main() {
  group('StatEntity', () {

    const tSpeciesEntity = SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/');

    const tStateEntity = StatEntity(
      baseStat: 45,
      effort: 0,
      stat: tSpeciesEntity,
    );

    final tJson = {
      'base_stat': 45,
      'effort': 0,
      'stat': SpeciesEntity(name: 'overgrow', url: 'https://pokeapi.co/api/v2/ability/65/').toJson(),
    };

    test('should return a JSON map containing proper data', () {
      final result = tStateEntity.toJson();
      final expectedJson = {
        'base_stat': 45,
        'effort': 0,
        'stat': tSpeciesEntity,
      };

      expect(result, equals(expectedJson));
    });

    test('should return a valid model from JSON', () {
      final result = StatEntity.fromJson(tJson);
      expect(result, equals(tStateEntity));
    });
  });
}
