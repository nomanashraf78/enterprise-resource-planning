// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_entery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralEntryModel _$GeneralEntryModelFromJson(Map<String, dynamic> json) =>
    GeneralEntryModel(
      entryID: json['entryID'] as String,
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => EntryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeneralEntryModelToJson(GeneralEntryModel instance) =>
    <String, dynamic>{
      'entryID': instance.entryID,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
      'items': instance.items,
    };
