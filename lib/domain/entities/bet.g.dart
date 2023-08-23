// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bet _$$_BetFromJson(Map<String, dynamic> json) => _$_Bet(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
      chosenTeam: Team.fromJson(json['chosenTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BetToJson(_$_Bet instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'match': instance.match,
      'chosenTeam': instance.chosenTeam,
    };
