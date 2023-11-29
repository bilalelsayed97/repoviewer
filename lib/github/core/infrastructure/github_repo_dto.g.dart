// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoDTOImpl _$$GithubRepoDTOImplFromJson(Map<String, dynamic> json) =>
    _$GithubRepoDTOImpl(
      owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: _descriptionFromJson(json['description']),
      stargazersCount: json['stargazers_count'] as int,
    );

Map<String, dynamic> _$$GithubRepoDTOImplToJson(_$GithubRepoDTOImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
    };
