import 'package:enterprise_resource_planning/%20models/bill_pay_item.dart';
import 'package:enterprise_resource_planning/%20models/bill_payment_status.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bill_pay_model.g.dart';


@JsonSerializable()
class BillPayModel {
  String paymentId;
  String vendorId; // who is receiving the payment
  String invoiceId; //  payment status of individual invoices.
  String customerId;
  PaymentStatus paymentStatus;
  DateTime paymentDate;
  double paymentAmount;
  String paymentMethod;
  List<BillPayItem> billPayItems;

  BillPayModel({
    required this.paymentId,
    required this.invoiceId,
    required this.paymentAmount,
    required this.paymentDate,
    required this.paymentMethod,
    required this.vendorId,
    required this.billPayItems,
    required this.customerId,
    required this.paymentStatus
  });

  factory BillPayModel.fromJson(Map<String, dynamic> json) =>
      _$BillPayModelFromJson(json);
  Map<String, dynamic> toJson() => _$BillPayModelToJson(this);
}
