// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubHeadersImpl _$$GithubHeadersImplFromJson(Map<String, dynamic> json) =>
    _$GithubHeadersImpl(
      etag: json['etag'] as String?,
      link: json['link'] == null
          ? null
          : PaginationLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GithubHeadersImplToJson(_$GithubHeadersImpl instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'link': instance.link,
    };

_$PaginationLinkImpl _$$PaginationLinkImplFromJson(Map<String, dynamic> json) =>
    _$PaginationLinkImpl(
      maxPage: json['maxPage'] as int,
    );

Map<String, dynamic> _$$PaginationLinkImplToJson(
        _$PaginationLinkImpl instance) =>
    <String, dynamic>{
      'maxPage': instance.maxPage,
    };
