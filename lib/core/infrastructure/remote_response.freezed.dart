// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteResponse<T> {
  int get maxPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnection,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnection,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnection,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteResponseCopyWith<T, RemoteResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res, RemoteResponse<T>>;
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res, $Val extends RemoteResponse<T>>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$NoConnectionImplCopyWith(_$NoConnectionImpl<T> value,
          $Res Function(_$NoConnectionImpl<T>) then) =
      __$$NoConnectionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NoConnectionImpl<T>>
    implements _$$NoConnectionImplCopyWith<T, $Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl<T> _value, $Res Function(_$NoConnectionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$NoConnectionImpl<T>(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoConnectionImpl<T> extends _NoConnection<T> {
  const _$NoConnectionImpl({required this.maxPage}) : super._();

  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionImpl<T> &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionImplCopyWith<T, _$NoConnectionImpl<T>> get copyWith =>
      __$$NoConnectionImplCopyWithImpl<T, _$NoConnectionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnection,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return noConnection(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnection,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return noConnection?.call(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnection,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteResponse<T> {
  const factory _NoConnection({required final int maxPage}) =
      _$NoConnectionImpl<T>;
  const _NoConnection._() : super._();

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionImplCopyWith<T, _$NoConnectionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotModifiedImplCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$NotModifiedImplCopyWith(_$NotModifiedImpl<T> value,
          $Res Function(_$NotModifiedImpl<T>) then) =
      __$$NotModifiedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$NotModifiedImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NotModifiedImpl<T>>
    implements _$$NotModifiedImplCopyWith<T, $Res> {
  __$$NotModifiedImplCopyWithImpl(
      _$NotModifiedImpl<T> _value, $Res Function(_$NotModifiedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$NotModifiedImpl<T>(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NotModifiedImpl<T> extends _NotModified<T> {
  const _$NotModifiedImpl({required this.maxPage}) : super._();

  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.notModified(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotModifiedImpl<T> &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      __$$NotModifiedImplCopyWithImpl<T, _$NotModifiedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnection,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return notModified(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnection,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return notModified?.call(maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnection,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return notModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NotModified<T> extends RemoteResponse<T> {
  const factory _NotModified({required final int maxPage}) =
      _$NotModifiedImpl<T>;
  const _NotModified._() : super._();

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithNewDataImplCopyWith<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  factory _$$WithNewDataImplCopyWith(_$WithNewDataImpl<T> value,
          $Res Function(_$WithNewDataImpl<T>) then) =
      __$$WithNewDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, int maxPage});
}

/// @nodoc
class __$$WithNewDataImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$WithNewDataImpl<T>>
    implements _$$WithNewDataImplCopyWith<T, $Res> {
  __$$WithNewDataImplCopyWithImpl(
      _$WithNewDataImpl<T> _value, $Res Function(_$WithNewDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? maxPage = null,
  }) {
    return _then(_$WithNewDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WithNewDataImpl<T> extends _WithNewData<T> {
  const _$WithNewDataImpl(this.data, {required this.maxPage}) : super._();

  @override
  final T data;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withNewData(data: $data, maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithNewDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      __$$WithNewDataImplCopyWithImpl<T, _$WithNewDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxPage) noConnection,
    required TResult Function(int maxPage) notModified,
    required TResult Function(T data, int maxPage) withNewData,
  }) {
    return withNewData(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int maxPage)? noConnection,
    TResult? Function(int maxPage)? notModified,
    TResult? Function(T data, int maxPage)? withNewData,
  }) {
    return withNewData?.call(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxPage)? noConnection,
    TResult Function(int maxPage)? notModified,
    TResult Function(T data, int maxPage)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> extends RemoteResponse<T> {
  const factory _WithNewData(final T data, {required final int maxPage}) =
      _$WithNewDataImpl<T>;
  const _WithNewData._() : super._();

  T get data;
  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
