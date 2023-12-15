// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoDetailDTO _$GithubRepoDetailDTOFromJson(Map<String, dynamic> json) {
  return _GithubRepoDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoDetailDTO {
  String get fullName => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  bool get starred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoDetailDTOCopyWith<GithubRepoDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoDetailDTOCopyWith<$Res> {
  factory $GithubRepoDetailDTOCopyWith(
          GithubRepoDetailDTO value, $Res Function(GithubRepoDetailDTO) then) =
      _$GithubRepoDetailDTOCopyWithImpl<$Res, GithubRepoDetailDTO>;
  @useResult
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class _$GithubRepoDetailDTOCopyWithImpl<$Res, $Val extends GithubRepoDetailDTO>
    implements $GithubRepoDetailDTOCopyWith<$Res> {
  _$GithubRepoDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? html = null,
    Object? starred = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubRepoDetailDTOImplCopyWith<$Res>
    implements $GithubRepoDetailDTOCopyWith<$Res> {
  factory _$$GithubRepoDetailDTOImplCopyWith(_$GithubRepoDetailDTOImpl value,
          $Res Function(_$GithubRepoDetailDTOImpl) then) =
      __$$GithubRepoDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class __$$GithubRepoDetailDTOImplCopyWithImpl<$Res>
    extends _$GithubRepoDetailDTOCopyWithImpl<$Res, _$GithubRepoDetailDTOImpl>
    implements _$$GithubRepoDetailDTOImplCopyWith<$Res> {
  __$$GithubRepoDetailDTOImplCopyWithImpl(_$GithubRepoDetailDTOImpl _value,
      $Res Function(_$GithubRepoDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? html = null,
    Object? starred = null,
  }) {
    return _then(_$GithubRepoDetailDTOImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoDetailDTOImpl extends _GithubRepoDetailDTO {
  const _$GithubRepoDetailDTOImpl(
      {required this.fullName, required this.html, required this.starred})
      : super._();

  factory _$GithubRepoDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoDetailDTOImplFromJson(json);

  @override
  final String fullName;
  @override
  final String html;
  @override
  final bool starred;

  @override
  String toString() {
    return 'GithubRepoDetailDTO(fullName: $fullName, html: $html, starred: $starred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoDetailDTOImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.starred, starred) || other.starred == starred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, html, starred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoDetailDTOImplCopyWith<_$GithubRepoDetailDTOImpl> get copyWith =>
      __$$GithubRepoDetailDTOImplCopyWithImpl<_$GithubRepoDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _GithubRepoDetailDTO extends GithubRepoDetailDTO {
  const factory _GithubRepoDetailDTO(
      {required final String fullName,
      required final String html,
      required final bool starred}) = _$GithubRepoDetailDTOImpl;
  const _GithubRepoDetailDTO._() : super._();

  factory _GithubRepoDetailDTO.fromJson(Map<String, dynamic> json) =
      _$GithubRepoDetailDTOImpl.fromJson;

  @override
  String get fullName;
  @override
  String get html;
  @override
  bool get starred;
  @override
  @JsonKey(ignore: true)
  _$$GithubRepoDetailDTOImplCopyWith<_$GithubRepoDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
