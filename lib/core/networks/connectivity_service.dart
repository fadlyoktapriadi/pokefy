import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ConnectivityService {
  Future<bool> get isConnected;
  Stream<bool> get onStatusChanged;
}

class ConnectivityServiceImpl implements ConnectivityService {
  final Connectivity _connectivity;

  ConnectivityServiceImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return !_isOffline(result);
  }

  @override
  Stream<bool> get onStatusChanged {
    return _connectivity.onConnectivityChanged.map((result) {
      return !_isOffline(result);
    }).distinct();
  }

  bool _isOffline(List<ConnectivityResult> results) {
    if (results.isEmpty) return true;
    return results.every((r) => r == ConnectivityResult.none);
  }
}
