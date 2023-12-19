// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BetImpl _$$BetImplFromJson(Map<String, dynamic> json) => _$BetImpl(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
      chosenTeam: Team.fromJson(json['chosenTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BetImplToJson(_$BetImpl instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'match': instance.match,
      'chosenTeam': instance.chosenTeam,
    };
