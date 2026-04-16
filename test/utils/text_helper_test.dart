import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/utils/text_helper.dart';

void main() {
  group('Text Helper Functions', () {

    group('capitalize', () {
      test('should return empty string when input is empty', () {
        final result = capitalize('');
        expect(result, '');
      });

      test('should return empty word when there are double spaces', () {
        final result = capitalize('hello  world');
        expect(result, 'Hello  World');
      });

      test('should capitalize a single lowercase word', () {
        final result = capitalize('pokemon');
        expect(result, 'Pokemon');
      });

      test('should correctly format mixed case string', () {
        final result = capitalize('pIkaChu aNd bULBaSaur');
        expect(result, 'Pikachu And Bulbasaur');
      });
    });

    group('clearStrip', () {
      test('should replace all hyphens with spaces', () {
        final result = clearStrip('special-attack');
        expect(result, 'special attack');
      });

      test('should return the original string if no hyphens exist', () {
        final result = clearStrip('special attack');
        expect(result, 'special attack');
      });

      test('should return empty string when input is empty', () {
        final result = clearStrip('');
        expect(result, '');
      });
    });

  });
}
