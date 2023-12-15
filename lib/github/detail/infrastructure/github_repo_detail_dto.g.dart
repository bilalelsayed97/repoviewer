// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoDetailDTOImpl _$$GithubRepoDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepoDetailDTOImpl(
      fullName: json['fullName'] as String,
      html: json['html'] as String,
      starred: json['starred'] as bool,
    );

Map<String, dynamic> _$$GithubRepoDetailDTOImplToJson(
        _$GithubRepoDetailDTOImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'html': instance.html,
      'starred': instance.starred,
    };
