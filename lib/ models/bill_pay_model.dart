import 'package:enterprise_resource_planning/%20models/bill_pay_item.dart';
import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';
import 'package:json_annotation/json_annotation.dart';
//part 'bill_pay_model.g.dart';

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
  double discountPercentage; // discount ki percentage store kar sakte hain
  double shippingCost;
  String additionalDetails;
  List<JournalEntry> journalEntries;
  PaymentTerms paymentTerms;
  String notes; // additional notes or comments
  List<String>
      attachments; // This will be a list of URLs pointing to the attachments
  String
      transactionCurrency; // Added transactionCurrency for handling multiple currencies

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
    required this.paymentTerms,
    required this.notes,
    required this.attachments,
    required this.discountPercentage,
    required this.transactionCurrency,
  });

  // factory BillPayModel.fromJson(Map<String, dynamic> json) =>
  //     _$BillPayModelFromJson(json);
  // Map<String, dynamic> toJson() => _$BillPayModelToJson(this);
}

enum PaymentStatus {
  paid,
  unpaid,
  overdue,
  cancelled,
}

class PaymentTerms {
  String Dueonreceipt;
  String Net15;
  String Net30;
  String Net60;

  PaymentTerms(
      {required this.Dueonreceipt,
      required this.Net15,
      required this.Net30,
      required this.Net60});
}
