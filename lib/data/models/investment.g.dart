// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentImpl _$$InvestmentImplFromJson(Map<String, dynamic> json) =>
    _$InvestmentImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      pdfUrl: json['pdfUrl'] as String,
    );

Map<String, dynamic> _$$InvestmentImplToJson(_$InvestmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'pdfUrl': instance.pdfUrl,
    };
