// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Goals _$GoalsFromJson(Map<String, dynamic> json) => _Goals(
  home: (json['home'] as num?)?.toInt() ?? 0,
  away: (json['away'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$GoalsToJson(_Goals instance) => <String, dynamic>{
  'home': instance.home,
  'away': instance.away,
};
