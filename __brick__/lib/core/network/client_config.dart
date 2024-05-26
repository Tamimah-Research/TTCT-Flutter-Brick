import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

import 'end_points.dart';


///
class ApiClient {
  ///
  Dio getDioClient() {
    late String baseUrl;
    if (kDebugMode) {
      baseUrl = CustomBaseUrls.baseUrl.url;
    } else {
      baseUrl = CustomBaseUrls.baseUrl.url;
    }
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
    );

    final dio = Dio(options);
    dio.options.contentType = Headers.jsonContentType;
    dio.options.responseType = ResponseType.json;
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        canShowLog: true,
        convertFormData: true,
        showCUrl: true,
        responseHeader: true,
        queryParameters: true,
      ),);
    }
    return dio;
  }
}
