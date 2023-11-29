// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      name: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'login': instance.name,
      'avatar_url': instance.avatarUrl,
    };
