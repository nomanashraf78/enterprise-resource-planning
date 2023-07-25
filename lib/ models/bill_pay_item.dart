import 'package:json_annotation/json_annotation.dart';
part 'bill_pay_item.g.dart';

@JsonSerializable()
class BillPayItem {
  String billId;
  double dueAmount;
  DateTime dueDate;
  String productName;
  double productQuantity;
  double productUnitCost;

  BillPayItem({
    required this.dueDate,
    required this.billId,
    required this.dueAmount,
    required this.productName,
    required this.productQuantity,
    required this.productUnitCost,
  });

  factory BillPayItem.fromJson(Map<String, dynamic> json) =>
      _$BillPayItemFromJson(json);
  Map<String, dynamic> toJson() => _$BillPayItemToJson(this);
}
