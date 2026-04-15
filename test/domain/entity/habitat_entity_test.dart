import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/habitat/habitat_entity.dart';

void main() {
  group('HabitatEntity', () {
    const tHabitat = HabitatEntity(
      name: 'mountain',
      url: 'https://pokeapi.co/api/v2/pokemon-habitat/4',
    );

    final tJson = {
      'name': 'mountain',
      'url': 'https://pokeapi.co/api/v2/pokemon-habitat/4',
    };

    test('should return a JSON map containing proper data', () {
      final result = tHabitat.toJson();
      expect(result, equals(tJson));
    });

    test('should return a valid model from JSON', () {
      final result = HabitatEntity.fromJson(tJson);
      expect(result, equals(tHabitat));
    });
  });
}
