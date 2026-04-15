import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/networks/connectivity_service.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late MockConnectivity mockConnectivity;
  late ConnectivityServiceImpl connectivityService;

  setUp(() {
    mockConnectivity = MockConnectivity();
    connectivityService = ConnectivityServiceImpl(mockConnectivity);
  });

  group('ConnectivityServiceImpl - isConnected', () {
    test('returns true when there is an active connection', () async {
      when(() => mockConnectivity.checkConnectivity()).thenAnswer(
            (_) async => [ConnectivityResult.wifi],
      );

      final result = await connectivityService.isConnected;
      expect(result, isTrue);
    });

    test('returns true when there are multiple connections including valid ones', () async {
      when(() => mockConnectivity.checkConnectivity()).thenAnswer(
            (_) async => [ConnectivityResult.none, ConnectivityResult.mobile],
      );

      final result = await connectivityService.isConnected;
      expect(result, isTrue);
    });

    test('returns false when results are empty', () async {
      when(() => mockConnectivity.checkConnectivity()).thenAnswer(
            (_) async => <ConnectivityResult>[],
      );

      final result = await connectivityService.isConnected;
      expect(result, isFalse);
    });

    test('returns false when all results are ConnectivityResult.none', () async {
      when(() => mockConnectivity.checkConnectivity()).thenAnswer(
            (_) async => [ConnectivityResult.none, ConnectivityResult.none],
      );

      final result = await connectivityService.isConnected;
      expect(result, isFalse);
    });
  });

  group('ConnectivityServiceImpl - onStatusChanged', () {
    test('emits correct booleans and ignores consecutive duplicates (distinct)', () async {
      final controller = StreamController<List<ConnectivityResult>>();
      when(() => mockConnectivity.onConnectivityChanged)
          .thenAnswer((_) => controller.stream);

      // Verify the emitted stream order
      final expectation = expectLater(
        connectivityService.onStatusChanged,
        emitsInOrder([
          true,   // from wifi
          false,  // from none
          true,   // from ethernet
          emitsDone,
        ]),
      );

      // 1. Valid connection -> emits: true
      controller.add([ConnectivityResult.wifi]);

      // 2. Another valid connection -> ignored by distinct
      controller.add([ConnectivityResult.mobile]);

      // 3. No connection -> emits: false
      controller.add([ConnectivityResult.none]);

      // 4. Empty connection -> ignored by distinct (still false)
      controller.add([]);

      // 5. Valid connection again -> emits: true
      controller.add([ConnectivityResult.ethernet]);

      await controller.close();
      await expectation;
    });
  });
}
