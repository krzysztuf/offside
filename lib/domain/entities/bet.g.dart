// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BetImpl _$$BetImplFromJson(Map<String, dynamic> json) => _$BetImpl(
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String,
      prediction:
          MatchGoals.fromJson(json['prediction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BetImplToJson(_$BetImpl instance) => <String, dynamic>{
      'userId': instance.userId,
      'prediction': instance.prediction,
    };
