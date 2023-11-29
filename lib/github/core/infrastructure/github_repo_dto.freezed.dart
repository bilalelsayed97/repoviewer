// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoDTO _$GithubRepoDTOFromJson(Map<String, dynamic> json) {
  return _GithubRepoDTO.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoDTO {
  UserDTO get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoDTOCopyWith<GithubRepoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoDTOCopyWith<$Res> {
  factory $GithubRepoDTOCopyWith(
          GithubRepoDTO value, $Res Function(GithubRepoDTO) then) =
      _$GithubRepoDTOCopyWithImpl<$Res, GithubRepoDTO>;
  @useResult
  $Res call(
      {UserDTO owner,
      String name,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepoDTOCopyWithImpl<$Res, $Val extends GithubRepoDTO>
    implements $GithubRepoDTOCopyWith<$Res> {
  _$GithubRepoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get owner {
    return $UserDTOCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubRepoDTOImplCopyWith<$Res>
    implements $GithubRepoDTOCopyWith<$Res> {
  factory _$$GithubRepoDTOImplCopyWith(
          _$GithubRepoDTOImpl value, $Res Function(_$GithubRepoDTOImpl) then) =
      __$$GithubRepoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDTO owner,
      String name,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  @override
  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GithubRepoDTOImplCopyWithImpl<$Res>
    extends _$GithubRepoDTOCopyWithImpl<$Res, _$GithubRepoDTOImpl>
    implements _$$GithubRepoDTOImplCopyWith<$Res> {
  __$$GithubRepoDTOImplCopyWithImpl(
      _$GithubRepoDTOImpl _value, $Res Function(_$GithubRepoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
  }) {
    return _then(_$GithubRepoDTOImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoDTOImpl extends _GithubRepoDTO {
  const _$GithubRepoDTOImpl(
      {required this.owner,
      required this.name,
      @JsonKey(fromJson: _descriptionFromJson) required this.description,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount})
      : super._();

  factory _$GithubRepoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoDTOImplFromJson(json);

  @override
  final UserDTO owner;
  @override
  final String name;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  final String description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;

  @override
  String toString() {
    return 'GithubRepoDTO(owner: $owner, name: $name, description: $description, stargazersCount: $stargazersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoDTOImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, owner, name, description, stargazersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoDTOImplCopyWith<_$GithubRepoDTOImpl> get copyWith =>
      __$$GithubRepoDTOImplCopyWithImpl<_$GithubRepoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoDTOImplToJson(
      this,
    );
  }
}

abstract class _GithubRepoDTO extends GithubRepoDTO {
  const factory _GithubRepoDTO(
      {required final UserDTO owner,
      required final String name,
      @JsonKey(fromJson: _descriptionFromJson)
      required final String description,
      @JsonKey(name: 'stargazers_count')
      required final int stargazersCount}) = _$GithubRepoDTOImpl;
  const _GithubRepoDTO._() : super._();

  factory _GithubRepoDTO.fromJson(Map<String, dynamic> json) =
      _$GithubRepoDTOImpl.fromJson;

  @override
  UserDTO get owner;
  @override
  String get name;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  String get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(ignore: true)
  _$$GithubRepoDTOImplCopyWith<_$GithubRepoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
