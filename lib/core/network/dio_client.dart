import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
DioClient dio(DioRef ref) => DioClient();

class DioClient {
  late Dio _dio;
  late CancelToken _cancelToken;

  Dio dio() => _dio;
  CancelToken cancelToken() => _cancelToken;

  DioClient() {
    _dio = Dio(BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
    ));

    if (!kReleaseMode) {
      _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ));
    }

    _cancelToken = CancelToken();
  }
}
