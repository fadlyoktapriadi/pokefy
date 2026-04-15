import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/egg_groups/egg_groups_entity.dart';

void main() {
  group('EggGroupsEntity', () {
    const tEggGroups = EggGroupsEntity(
      name: 'overgrow',
      url: 'https://pokeapi.co/api/v2/ability/65/',
    );

    final tJson = {
      'name': 'overgrow',
      'url': 'https://pokeapi.co/api/v2/ability/65/',
    };

    test('should return a JSON map containing proper data', () {
      final result = tEggGroups.toJson();
      expect(result, equals(tJson));
    });

    test('should return a valid model from JSON', () {
      final result = EggGroupsEntity.fromJson(tJson);
      expect(result, equals(tEggGroups));
    });
  });
}
