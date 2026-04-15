import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:test/test.dart';

class _ThrowingAdapter implements HttpClientAdapter {
  final DioException Function(RequestOptions options) exceptionBuilder;

  _ThrowingAdapter(this.exceptionBuilder);

  @override
  Future<ResponseBody> fetch(
      RequestOptions options,
      Stream<Uint8List>? requestStream,
      Future<void>? cancelFuture,
      ) async {
    throw exceptionBuilder(options);
  }

  @override
  void close({bool force = false}) {}
}

Dio _buildDioWithError(
    DioException Function(RequestOptions options) exceptionBuilder,
    ) {
  final client = DioClient();

  // Avoid retry delays in tests.
  client.dio.interceptors.removeWhere((i) => i is RetryInterceptor);
  client.dio.httpClientAdapter = _ThrowingAdapter(exceptionBuilder);

  return client.dio;
}

void main() {
  group('DioClient config', () {
    test('sets base options and interceptors correctly', () {
      final client = DioClient();
      final options = client.dio.options;

      expect(options.baseUrl, 'https://pokeapi.co/api/v2/');
      expect(options.connectTimeout, const Duration(seconds: 10));
      expect(options.receiveTimeout, const Duration(seconds: 10));
      expect(options.headers['Content-Type'], 'application/json');
      expect(options.headers['Accept'], 'application/json');
      expect(options.headers['Platform'], 'Mobile');
      expect(options.contentType, 'application/json');
      expect(options.responseType, ResponseType.json);

      expect(client.dio.interceptors.length, 3);
      expect(
        client.dio.interceptors.any((i) => i.runtimeType.toString() == '_ErrorInterceptor'),
        isTrue,
      );
      expect(client.dio.interceptors.any((i) => i is RetryInterceptor), isTrue);
    });
  });

  group('_ErrorInterceptor mapping', () {
    test('maps connectionTimeout -> DeadlineExceededException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.connectionTimeout,
        ),
      );

      expect(
            () => dio.get('/timeout'),
        throwsA(
          predicate(
                (e) => e is DeadlineExceededException && e.toString() == 'Connection timeout',
          ),
        ),
      );
    });

    test('maps receiveTimeout -> DeadlineExceededException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.receiveTimeout,
        ),
      );

      expect(() => dio.get('/timeout2'), throwsA(isA<DeadlineExceededException>()));
    });

    test('maps badResponse 400 -> BadRequestException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: o, statusCode: 400),
        ),
      );

      expect(
            () => dio.get('/400'),
        throwsA(
          predicate((e) => e is BadRequestException && e.toString() == 'Invalid request'),
        ),
      );
    });

    test('maps badResponse 401 -> UnauthorizedException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: o, statusCode: 401),
        ),
      );

      expect(
            () => dio.get('/401'),
        throwsA(
          predicate((e) => e is UnauthorizedException && e.toString() == 'Unauthorized'),
        ),
      );
    });

    test('maps badResponse 404 -> NotFoundException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: o, statusCode: 404),
        ),
      );

      expect(
            () => dio.get('/404'),
        throwsA(
          predicate((e) => e is NotFoundException && e.toString() == 'Not found'),
        ),
      );
    });

    test('maps badResponse 500 -> InternalServerErrorException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: o, statusCode: 500),
        ),
      );

      expect(
            () => dio.get('/500'),
        throwsA(
          predicate(
                (e) =>
            e is InternalServerErrorException &&
                e.toString() == 'Internal server error',
          ),
        ),
      );
    });

    test('maps connectionError -> NoInternetConnectionException', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.connectionError,
        ),
      );

      expect(
            () => dio.get('/offline'),
        throwsA(
          predicate(
                (e) =>
            e is NoInternetConnectionException &&
                e.toString() == 'No internet connection',
          ),
        ),
      );
    });

    test('passes through badResponse with unmapped status (handler.next)', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: o, statusCode: 418),
        ),
      );

      expect(
            () => dio.get('/418'),
        throwsA(
          predicate(
                (e) =>
            e is DioException &&
                e.type == DioExceptionType.badResponse &&
                e.response?.statusCode == 418,
          ),
        ),
      );
    });

    test('passes through unknown type (default -> handler.next)', () async {
      final dio = _buildDioWithError(
            (o) => DioException(
          requestOptions: o,
          type: DioExceptionType.unknown,
          error: 'unknown',
        ),
      );

      expect(
            () => dio.get('/unknown'),
        throwsA(
          predicate((e) => e is DioException && e.type == DioExceptionType.unknown),
        ),
      );
    });
  });

  group('Custom exception toString', () {
    final requestOptions = RequestOptions(path: '/');

    test('BadRequestException', () {
      expect(BadRequestException(requestOptions).toString(), 'Invalid request');
    });

    test('UnauthorizedException', () {
      expect(UnauthorizedException(requestOptions).toString(), 'Unauthorized');
    });

    test('NotFoundException', () {
      expect(NotFoundException(requestOptions).toString(), 'Not found');
    });

    test('InternalServerErrorException', () {
      expect(
        InternalServerErrorException(requestOptions).toString(),
        'Internal server error',
      );
    });

    test('DeadlineExceededException', () {
      expect(
        DeadlineExceededException(requestOptions).toString(),
        'Connection timeout',
      );
    });

    test('NoInternetConnectionException', () {
      expect(
        NoInternetConnectionException(requestOptions).toString(),
        'No internet connection',
      );
    });
  });
}
