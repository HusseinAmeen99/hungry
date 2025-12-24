import 'package:dio/dio.dart';

import 'api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioError error) {
    final statusCode = error.response?.statusCode;
    final data = error.response?.data;
if(data is Map<String,dynamic> && data['message'] !=null){
  return ApiError(message: data['message'],statusCode: statusCode);
}
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(message: 'Connection timeout please check the internet connection ');

        case DioExceptionType.sendTimeout:
        return ApiError(message: 'Request timeout please try again');

      case DioExceptionType.receiveTimeout:
        return ApiError(message: 'Response timeout please try again');

      default:
        return ApiError(message: 'An unexpected error ouccurred Please Try Again');
    }
  }
}
