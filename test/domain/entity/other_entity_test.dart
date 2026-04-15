import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/domain/entity/other/home_entity.dart';
import 'package:pokefy/domain/entity/other/other_entity.dart';
import 'package:pokefy/domain/entity/spirites/sprites_entity.dart';

void main() {
  group('OtherEntity', () {
    const tHomeEntity = HomeEntity(
      frontDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/644.png',
      frontFemale: null,
      frontShiny:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/644.png',
      frontShinyFemale: null,
    );

    const tSpiritesEntity = SpritesEntity(
      backDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/644.png',
      backFemale: null,
      backShiny:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/shiny/644.png',
      backShinyFemale: null,
      frontDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/front/644.png',
      frontFemale: null,
      frontShiny:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/front/shiny/644.png',
      frontShinyFemale: null,
    );

    const tOtherEntity = OtherEntity(
      home: tHomeEntity,
      showdown: tSpiritesEntity,
    );

    final tJson = {
      'home': tHomeEntity.toJson(),
      'showdown': tSpiritesEntity.toJson(),
    };

    test('should return a JSON map containing proper data', () {
      final result = tOtherEntity.toJson();
      final expectedJson = {
        'home': tHomeEntity,
        'showdown': tSpiritesEntity,
      };

      expect(result, equals(expectedJson));
    });

    test('should return a valid model from JSON', () {
      final result = OtherEntity.fromJson(tJson);
      expect(result, equals(tOtherEntity));
    });
  });
}
