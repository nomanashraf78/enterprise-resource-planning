import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';
import 'package:enterprise_resource_planning/%20models/list_invoice_item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'invoice_model.g.dart';

@JsonSerializable()
class InvoiceModel {
  String invoiceId;
  String customerId;
  DateTime issueDate;
  DateTime dueDate;
  double totalAmount;
  double paidAmount;
  double outstandingAmount;
  double totalQuantity;
  InvoicePaymentStatus paymentStatus;
  List<InvoiceItem> invoiceItems;
  List<JournalEntry> journalEntries;

  InvoiceModel(
      {required this.invoiceId,
      required this.customerId,
      required this.totalQuantity,
      required this.dueDate,
      required this.issueDate,
      required this.outstandingAmount,
      required this.paidAmount,
      required this.paymentStatus,
      required this.totalAmount,
      required this.invoiceItems,
      required this.journalEntries});

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceModelToJson(this);
}

 enum InvoicePaymentStatus{
  paid,
  unpaid,
  overdue,
  cancelled,
 }
