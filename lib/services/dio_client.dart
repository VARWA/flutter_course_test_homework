import 'package:dio/dio.dart';
import 'package:todo_app/config/app_keys.dart';

class DioClient {
  final Dio dio;

  DioClient()
    : dio =
          Dio(
              BaseOptions(
                baseUrl: AppKeys.apiBaseUrl,
                contentType: 'application/json',
              ),
            )
            ..interceptors.addAll([
              LogInterceptor(
                requestHeader: true,
                requestBody: true,
                responseHeader: true,
                responseBody: true,
              ),
            ]);
}
