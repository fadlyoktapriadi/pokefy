part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = _ConnectivityInitial;
  const factory ConnectivityState.loading() = _ConnectivityLoading;
  const factory ConnectivityState.connected() = _ConnectivityConnected;
  const factory ConnectivityState.disconnected() = _ConnectivityDisconnected;
}
