import 'package:enterprise_resource_planning/%20models/bill_pay_item.dart';
import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bill_pay_model.g.dart';


@JsonSerializable()
class BillPayModel {
  String paymentId;
  String vendorId; // who is receiving the payment
  String invoiceId; // payment status of individual invoices
  PaymentStatus paymentStatus;
  DateTime paymentDate;
  double paymentAmount;
  String paymentMethod;
  List<BillPayItem> billPayItems;
  double taxAmount;
  String currency;
  double discountAmount;
  double shippingCost;
  String additionalDetails;
  List<JournalEntry> journalEntries;

  BillPayModel({
    required this.paymentId,
    required this.invoiceId,
    required this.paymentAmount,
    required this.paymentDate,
    required this.paymentMethod,
    required this.vendorId,
    required this.billPayItems,
    required this.paymentStatus,
    required this.additionalDetails,
    required this.currency,
    required this.discountAmount,
    required this.shippingCost,
    required this.taxAmount,
    required this.journalEntries,
  });

  factory BillPayModel.fromJson(Map<String, dynamic> json) =>
      _$BillPayModelFromJson(json);
  Map<String, dynamic> toJson() => _$BillPayModelToJson(this);
}

enum PaymentStatus {
  paid,
  unpaid,
  overdue,
  cancelled,
}
