import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/core/networks/connectivity_service.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final ConnectivityService _service;
  StreamSubscription<bool>? _subscription;

  ConnectivityCubit(this._service) : super(const ConnectivityState.initial());

  Future<void> start() async {
    emit(const ConnectivityState.loading());

    final connected = await _service.isConnected;
    emit(connected
        ? const ConnectivityState.connected()
        : const ConnectivityState.disconnected());

    _subscription ??= _service.onStatusChanged.listen((isConnected) {
      emit(isConnected
          ? const ConnectivityState.connected()
          : const ConnectivityState.disconnected());
    });
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
