import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/data/datasources/local/favorite_local_data_source_impl.dart';

class _MockBoxString extends Mock implements Box<String> {}

void main() {
  late _MockBoxString box;
  late FavoriteLocalDataSourceImpl dataSource;

  setUp(() {
    box = _MockBoxString();
    dataSource = FavoriteLocalDataSourceImpl(box);
  });

  group('FavoriteLocalDataSourceImpl', () {
    test('savePokemon calls box.put with id and json', () async {
      when(() => box.put(any(), any())).thenAnswer((_) async {});

      await dataSource.savePokemon(id: 25, pokemonJson: '{"id":25,"name":"pikachu"}');

      verify(() => box.put(25, '{"id":25,"name":"pikachu"}')).called(1);
    });

    test('removePokemon calls box.delete with id', () async {
      when(() => box.delete(any())).thenAnswer((_) async {});

      await dataSource.removePokemon(25);

      verify(() => box.delete(25)).called(1);
    });

    test('isFavorite returns true when key exists', () {
      when(() => box.containsKey(any())).thenReturn(true);

      final result = dataSource.isFavorite(25);

      expect(result, isTrue);
      verify(() => box.containsKey(25)).called(1);
    });

    test('isFavorite returns false when key does not exist', () {
      when(() => box.containsKey(any())).thenReturn(false);

      final result = dataSource.isFavorite(999);

      expect(result, isFalse);
      verify(() => box.containsKey(999)).called(1);
    });

    test('getAllFavoriteJson returns immutable list from box values', () {
      when(() => box.values).thenReturn(
        <String>['{"id":1,"name":"bulbasaur"}', '{"id":4,"name":"charmander"}'],
      );

      final result = dataSource.getAllFavoriteJson();

      expect(result, hasLength(2));
      expect(result.first, '{"id":1,"name":"bulbasaur"}');
      expect(result.last, '{"id":4,"name":"charmander"}');
    });
  });
}
