// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillPayModel _$BillPayModelFromJson(Map<String, dynamic> json) => BillPayModel(
      paymentId: json['paymentId'] as String,
      invoiceId: json['invoiceId'] as String,
      paymentAmount: (json['paymentAmount'] as num).toDouble(),
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      paymentMethod: json['paymentMethod'] as String,
      vendorId: json['vendorId'] as String,
      billPayItems: (json['billPayItems'] as List<dynamic>)
          .map((e) => BillPayItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerId: json['customerId'] as String,
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
    );

Map<String, dynamic> _$BillPayModelToJson(BillPayModel instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'vendorId': instance.vendorId,
      'invoiceId': instance.invoiceId,
      'customerId': instance.customerId,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'paymentAmount': instance.paymentAmount,
      'paymentMethod': instance.paymentMethod,
      'billPayItems': instance.billPayItems,
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.paid: 'paid',
  PaymentStatus.partiallyPaid: 'partiallyPaid',
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.overdue: 'overdue',
  PaymentStatus.cancelled: 'cancelled',
};
