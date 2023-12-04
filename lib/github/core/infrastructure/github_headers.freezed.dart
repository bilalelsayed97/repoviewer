// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubHeaders _$GithubHeadersFromJson(Map<String, dynamic> json) {
  return _GithubHeaders.fromJson(json);
}

/// @nodoc
mixin _$GithubHeaders {
  String? get etag => throw _privateConstructorUsedError;
  PaginationLink? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubHeadersCopyWith<GithubHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubHeadersCopyWith<$Res> {
  factory $GithubHeadersCopyWith(
          GithubHeaders value, $Res Function(GithubHeaders) then) =
      _$GithubHeadersCopyWithImpl<$Res, GithubHeaders>;
  @useResult
  $Res call({String? etag, PaginationLink? link});

  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class _$GithubHeadersCopyWithImpl<$Res, $Val extends GithubHeaders>
    implements $GithubHeadersCopyWith<$Res> {
  _$GithubHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationLinkCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $PaginationLinkCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubHeadersImplCopyWith<$Res>
    implements $GithubHeadersCopyWith<$Res> {
  factory _$$GithubHeadersImplCopyWith(
          _$GithubHeadersImpl value, $Res Function(_$GithubHeadersImpl) then) =
      __$$GithubHeadersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? etag, PaginationLink? link});

  @override
  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class __$$GithubHeadersImplCopyWithImpl<$Res>
    extends _$GithubHeadersCopyWithImpl<$Res, _$GithubHeadersImpl>
    implements _$$GithubHeadersImplCopyWith<$Res> {
  __$$GithubHeadersImplCopyWithImpl(
      _$GithubHeadersImpl _value, $Res Function(_$GithubHeadersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? link = freezed,
  }) {
    return _then(_$GithubHeadersImpl(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubHeadersImpl extends _GithubHeaders {
  const _$GithubHeadersImpl({this.etag, this.link}) : super._();

  factory _$GithubHeadersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubHeadersImplFromJson(json);

  @override
  final String? etag;
  @override
  final PaginationLink? link;

  @override
  String toString() {
    return 'GithubHeaders(etag: $etag, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubHeadersImpl &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etag, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubHeadersImplCopyWith<_$GithubHeadersImpl> get copyWith =>
      __$$GithubHeadersImplCopyWithImpl<_$GithubHeadersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubHeadersImplToJson(
      this,
    );
  }
}

abstract class _GithubHeaders extends GithubHeaders {
  const factory _GithubHeaders(
      {final String? etag, final PaginationLink? link}) = _$GithubHeadersImpl;
  const _GithubHeaders._() : super._();

  factory _GithubHeaders.fromJson(Map<String, dynamic> json) =
      _$GithubHeadersImpl.fromJson;

  @override
  String? get etag;
  @override
  PaginationLink? get link;
  @override
  @JsonKey(ignore: true)
  _$$GithubHeadersImplCopyWith<_$GithubHeadersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLink _$PaginationLinkFromJson(Map<String, dynamic> json) {
  return _PaginationLink.fromJson(json);
}

/// @nodoc
mixin _$PaginationLink {
  int get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinkCopyWith<PaginationLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinkCopyWith<$Res> {
  factory $PaginationLinkCopyWith(
          PaginationLink value, $Res Function(PaginationLink) then) =
      _$PaginationLinkCopyWithImpl<$Res, PaginationLink>;
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res, $Val extends PaginationLink>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._value, this._then);

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
abstract class _$$PaginationLinkImplCopyWith<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  factory _$$PaginationLinkImplCopyWith(_$PaginationLinkImpl value,
          $Res Function(_$PaginationLinkImpl) then) =
      __$$PaginationLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$PaginationLinkImplCopyWithImpl<$Res>
    extends _$PaginationLinkCopyWithImpl<$Res, _$PaginationLinkImpl>
    implements _$$PaginationLinkImplCopyWith<$Res> {
  __$$PaginationLinkImplCopyWithImpl(
      _$PaginationLinkImpl _value, $Res Function(_$PaginationLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$PaginationLinkImpl(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationLinkImpl extends _PaginationLink {
  const _$PaginationLinkImpl({required this.maxPage}) : super._();

  factory _$PaginationLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationLinkImplFromJson(json);

  @override
  final int maxPage;

  @override
  String toString() {
    return 'PaginationLink(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationLinkImpl &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationLinkImplCopyWith<_$PaginationLinkImpl> get copyWith =>
      __$$PaginationLinkImplCopyWithImpl<_$PaginationLinkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationLinkImplToJson(
      this,
    );
  }
}

abstract class _PaginationLink extends PaginationLink {
  const factory _PaginationLink({required final int maxPage}) =
      _$PaginationLinkImpl;
  const _PaginationLink._() : super._();

  factory _PaginationLink.fromJson(Map<String, dynamic> json) =
      _$PaginationLinkImpl.fromJson;

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginationLinkImplCopyWith<_$PaginationLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
