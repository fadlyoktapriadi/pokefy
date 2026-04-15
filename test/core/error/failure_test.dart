import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/core/error/failure.dart';

void main() {
  group('Failure', () {
    test('ServerFailure stores message and is a Failure', () {
      const failure = ServerFailure(message: 'server error');

      expect(failure, isA<Failure>());
      expect(failure, isA<ServerFailure>());
      expect(failure.message, 'server error');
    });

    test('NetworkFailure stores message and is a Failure', () {
      const failure = NetworkFailure(message: 'no internet');

      expect(failure, isA<Failure>());
      expect(failure, isA<NetworkFailure>());
      expect(failure.message, 'no internet');
    });

    test('CacheFailure stores message and is a Failure', () {
      const failure = CacheFailure(message: 'cache miss');

      expect(failure, isA<Failure>());
      expect(failure, isA<CacheFailure>());
      expect(failure.message, 'cache miss');
    });
  });
}
