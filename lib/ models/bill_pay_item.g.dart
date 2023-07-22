// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_pay_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillPayItem _$BillPayItemFromJson(Map<String, dynamic> json) => BillPayItem(
      dueDate: DateTime.parse(json['dueDate'] as String),
      billId: json['billId'] as String,
      dueAmount: (json['dueAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$BillPayItemToJson(BillPayItem instance) =>
    <String, dynamic>{
      'billId': instance.billId,
      'dueAmount': instance.dueAmount,
      'dueDate': instance.dueDate.toIso8601String(),
    };
