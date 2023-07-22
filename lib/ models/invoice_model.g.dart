// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) => InvoiceModel(
      invoiceId: json['invoiceId'] as String,
      customerId: json['customerId'] as String,
      totalQuantity: (json['totalQuantity'] as num).toDouble(),
      dueDate: DateTime.parse(json['dueDate'] as String),
      issueDate: DateTime.parse(json['issueDate'] as String),
      outstandingAmount: (json['outstandingAmount'] as num).toDouble(),
      paidAmount: (json['paidAmount'] as num).toDouble(),
      paymentStatus: json['paymentStatus'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      invoiceItems: (json['invoiceItems'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InvoiceModelToJson(InvoiceModel instance) =>
    <String, dynamic>{
      'invoiceId': instance.invoiceId,
      'customerId': instance.customerId,
      'issueDate': instance.issueDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'paidAmount': instance.paidAmount,
      'outstandingAmount': instance.outstandingAmount,
      'totalQuantity': instance.totalQuantity,
      'paymentStatus': instance.paymentStatus,
      'invoiceItems': instance.invoiceItems,
    };
