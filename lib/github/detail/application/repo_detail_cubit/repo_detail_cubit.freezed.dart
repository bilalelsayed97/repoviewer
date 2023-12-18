// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoDetailState {
  bool get hasStarredStatusChanged => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoDetailStateCopyWith<RepoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailStateCopyWith<$Res> {
  factory $RepoDetailStateCopyWith(
          RepoDetailState value, $Res Function(RepoDetailState) then) =
      _$RepoDetailStateCopyWithImpl<$Res, RepoDetailState>;
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class _$RepoDetailStateCopyWithImpl<$Res, $Val extends RepoDetailState>
    implements $RepoDetailStateCopyWith<$Res> {
  _$RepoDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_value.copyWith(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$InitialImpl(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.hasStarredStatusChanged = false});

  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailState.initial(hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return initial(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return initial?.call(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RepoDetailState {
  const factory Initial({final bool hasStarredStatusChanged}) = _$InitialImpl;

  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$LoadingImpl(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({this.hasStarredStatusChanged = false});

  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailState.loading(hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return loading(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return loading?.call(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RepoDetailState {
  const factory Loading({final bool hasStarredStatusChanged}) = _$LoadingImpl;

  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged});

  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoDetail = null,
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$SuccessImpl(
      null == repoDetail
          ? _value.repoDetail
          : repoDetail // ignore: cast_nullable_to_non_nullable
              as Fresh<GithubRepoDetail?>,
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail {
    return $FreshCopyWith<GithubRepoDetail?, $Res>(_value.repoDetail, (value) {
      return _then(_value.copyWith(repoDetail: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.repoDetail, {this.hasStarredStatusChanged = false});

  @override
  final Fresh<GithubRepoDetail?> repoDetail;
  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailState.success(repoDetail: $repoDetail, hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.repoDetail, repoDetail) ||
                other.repoDetail == repoDetail) &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, repoDetail, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return success(repoDetail, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return success?.call(repoDetail, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(repoDetail, hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements RepoDetailState {
  const factory Success(final Fresh<GithubRepoDetail?> repoDetail,
      {final bool hasStarredStatusChanged}) = _$SuccessImpl;

  Fresh<GithubRepoDetail?> get repoDetail;
  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GithubFailure failure, bool hasStarredStatusChanged});

  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$FailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.failure, {this.hasStarredStatusChanged = false});

  @override
  final GithubFailure failure;
  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailState.failure(failure: $failure, hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return failure(this.failure, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return failure?.call(this.failure, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements RepoDetailState {
  const factory Failure(final GithubFailure failure,
      {final bool hasStarredStatusChanged}) = _$FailureImpl;

  GithubFailure get failure;
  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
