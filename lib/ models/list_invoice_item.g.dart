// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_invoice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) => InvoiceItem(
      invoiceItemId: json['invoiceItemId'] as String,
      totalAmount: json['totalAmount'] as String,
      productName: json['productName'] as String,
      quantity: json['quantity'] as String,
      unitPrice: json['unitPrice'] as String,
    );

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'invoiceItemId': instance.invoiceItemId,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalAmount': instance.totalAmount,
    };
