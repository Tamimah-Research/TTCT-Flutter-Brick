import 'package:dio/dio.dart';
import '/core/network/client_config.dart';
import 'response_wrapper.dart';

class NetworkService {

  final Dio _dio = ApiClient().getDioClient();

  Future<BaseApiResponse<T>> call<T>(String url,
      {Map<String, dynamic>? body,
        Map<String, dynamic>? queryParameters,
        bool isAuthorizationRequired = false,
        FormData? formData,
        required HttpRequestType requestType,
        T Function(dynamic data)? fromJson,
        Function(DioException, ErrorInterceptorHandler)? onError,
        String? customBaseUrl}) async {
    try {
      _dio.interceptors.add(InterceptorsWrapper(
          onRequest: (option, handler) {
            if (isAuthorizationRequired) {

              String token = "";
              option.headers["Authorization"] = "Bearer $token";
            }

            if(customBaseUrl != null) {
              option.baseUrl = customBaseUrl;
            }
            return handler.next(option);
          },
          onError: onError ??
                  (error, handler) async {
                if (error.response != null) {
                  switch (error.response?.statusCode) {
                    case 400:
                      return handler.reject(error);
                    case 401:
                    //TODO: Call API to get refresh token and retry
                    //   final response = await _retry(url, requestType, body: body, queryParameters: queryParameters);
                    //   return handler.resolve(response);
                      return handler.reject(error);

                    case 403:
                      return handler.reject(error);
                    case 404:
                      return handler.reject(error);
                    case 500:
                      return handler.reject(error);
                    default:
                      return handler.reject(error);
                  }
                } else {
                  return handler.reject(error);
                }
              }));

      final response = await _dio.request(url,
          queryParameters: queryParameters,
          data: formData ?? body,
          options: Options(
            method: requestType.stringValue,
          ));
      return BaseApiResponse<T>.fromJson(response.data, fromJson!);
    } on DioException catch (e) {
      return BaseApiResponse<T>(
        responseStatus: ResponseStatus(
          statuscode: e.response?.statusCode ?? 500,
          message: e.response?.statusMessage??'Internal Server Error',
          severity: 'error',
        ),
        totalCount: 0,
        index: 0,
        pageSize: 0,
        data: null,
      );
    }
  }

  Future<Response<dynamic>> _retry(String endpoint, HttpRequestType type,
      {Map<String, dynamic>? body, FormData? formData, Map<String, dynamic>? queryParameters}) async {
    return await _dio.request(endpoint, queryParameters: queryParameters, data: formData ?? body, options: Options(method: type.stringValue));
  }
}


enum HttpRequestType { post, get, put, patch, delete }

extension NetworkTypeExtension on HttpRequestType {
  /// [RequestType] convert to string value.
  String get stringValue {
    switch (this) {
      case HttpRequestType.get:
        return 'GET';
      case HttpRequestType.post:
        return 'POST';
      case HttpRequestType.delete:
        return 'DELETE';
      case HttpRequestType.put:
        return 'PUT';
      case HttpRequestType.patch:
        return 'PATCH';
      default:
        throw 'Method Not Found';
    }
  }
}

class NetworkResponse<T> {
  final T? data;
  final bool isLoading;
  final bool hasError;

  const NetworkResponse({this.data, required this.isLoading, required this.hasError});
}