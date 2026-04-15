import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/other/home_entity.dart';

void main() {
  group('HomeEntity', () {
    const tHome = HomeEntity(
      frontDefault: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/644.png',
      frontFemale: null,
      frontShiny: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/644.png',
      frontShinyFemale: null,
    );

    final tJson = {
      'front_default': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/644.png',
      'front_female': null,
      'front_shiny': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/644.png',
      'front_shiny_female': null
    };

    test('should return a JSON map containing proper data', () {
      final result = tHome.toJson();
      expect(result, equals(tJson));
    });

    test('should return a valid model from JSON', () {
      final result = HomeEntity.fromJson(tJson);
      expect(result, equals(tHome));
    });
  });
}
