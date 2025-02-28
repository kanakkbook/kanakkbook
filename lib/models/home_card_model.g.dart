// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeCardModelImpl _$$HomeCardModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeCardModelImpl(
      uid: (json['uid'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: const IconDataConverter().fromJson(json['icon'] as String?),
      route: json['route'] as String?,
    );

Map<String, dynamic> _$$HomeCardModelImplToJson(_$HomeCardModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'icon': const IconDataConverter().toJson(instance.icon),
      'route': instance.route,
    };
