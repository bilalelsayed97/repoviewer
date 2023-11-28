import 'dart:io';

import 'package:dio/dio.dart';

extension DioExceptionX on DioException {
  bool get isNoConnectionError {
    return type == DioExceptionType.unknown && error is SocketException;
  }
}
