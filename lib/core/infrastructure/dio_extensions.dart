import 'dart:io';

import 'package:dio/dio.dart';

extension DioExceptionX on DioException {
  bool get isNoConnectionError {
    return type == DioExceptionType.unknown ||
        type == DioExceptionType.sendTimeout ||
        error is SocketException;
  }
}
