import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//ptf
part 'auth_failure.freezed.dart';
//funion

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.server({String? message}) = _Server;
  const factory AuthFailure.storage() = _Storage;
}
