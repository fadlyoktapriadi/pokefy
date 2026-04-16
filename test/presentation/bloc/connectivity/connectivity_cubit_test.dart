import 'dart:async';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/networks/connectivity_service.dart';
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';

class MockConnectivityService extends Mock implements ConnectivityService {}

void main() {
  late MockConnectivityService mockConnectivityService;

  setUp(() {
    mockConnectivityService = MockConnectivityService();
  });

  group('ConnectivityCubit', () {
    test('initial state should be ConnectivityState.initial()', () {
      final cubit = ConnectivityCubit(mockConnectivityService);
      expect(cubit.state, const ConnectivityState.initial());
      cubit.close();
    });

    blocTest<ConnectivityCubit, ConnectivityState>(
      'emits [loading, connected, disconnected] when starting connected then stream emits internet loss',
      build: () {
        when(() => mockConnectivityService.isConnected).thenAnswer((_) async => true);
        when(() => mockConnectivityService.onStatusChanged)
            .thenAnswer((_) => Stream.fromIterable([false]));
        return ConnectivityCubit(mockConnectivityService);
      },
      act: (cubit) => cubit.start(),
      expect: () => const [
        ConnectivityState.loading(),
        ConnectivityState.connected(),
        ConnectivityState.disconnected(),
      ],
    );

    blocTest<ConnectivityCubit, ConnectivityState>(
      'emits [loading, disconnected, connected] when starting disconnected then stream emits internet regained',
      build: () {
        when(() => mockConnectivityService.isConnected).thenAnswer((_) async => false);
        when(() => mockConnectivityService.onStatusChanged)
            .thenAnswer((_) => Stream.fromIterable([true]));
        return ConnectivityCubit(mockConnectivityService);
      },
      act: (cubit) => cubit.start(),
      expect: () => const [
        ConnectivityState.loading(),
        ConnectivityState.disconnected(),
        ConnectivityState.connected(),
      ],
    );

    blocTest<ConnectivityCubit, ConnectivityState>(
      'subscribes to onStatusChanged only once even if start() is called multiple times',
      build: () {
        when(() => mockConnectivityService.isConnected).thenAnswer((_) async => true);
        when(() => mockConnectivityService.onStatusChanged).thenAnswer((_) => const Stream.empty());
        return ConnectivityCubit(mockConnectivityService);
      },
      act: (cubit) async {
        await cubit.start();
        await cubit.start();
      },
      verify: (_) {
        // isConnected is called twice because start() is called twice,
        // but onStatusChanged should only be listened to once because of _subscription ??= check
        verify(() => mockConnectivityService.isConnected).called(2);
        verify(() => mockConnectivityService.onStatusChanged).called(1);
      },
    );
  });
}
