
import 'package:json_annotation/json_annotation.dart';
part 'list_invoice_item.g.dart';

@JsonSerializable()
class InvoiceItem {
  String invoiceItemId;
  String productName;
  double quantity;
  double unitPrice;
  double totalAmount;

  InvoiceItem({
    required this.invoiceItemId,
    required this.totalAmount,
    required this.productName,
    required this.quantity,
    required this.unitPrice,
  });

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);

}
