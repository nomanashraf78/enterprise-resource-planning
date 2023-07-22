// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generat_entry_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntryItem _$EntryItemFromJson(Map<String, dynamic> json) => EntryItem(
      accountID: json['accountID'] as String,
      debit: (json['debit'] as num).toDouble(),
      credit: (json['credit'] as num).toDouble(),
    );

Map<String, dynamic> _$EntryItemToJson(EntryItem instance) => <String, dynamic>{
      'accountID': instance.accountID,
      'debit': instance.debit,
      'credit': instance.credit,
    };
