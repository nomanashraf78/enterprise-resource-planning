
import 'package:json_annotation/json_annotation.dart';
//part 'generat_entry_item_model.g.dart';


@JsonSerializable()
class EntryItem {
  String accountID;
  double debit;
  double credit;

  EntryItem({
    required this.accountID,
    required this.debit,
    required this.credit,
  });

  // factory EntryItem.fromJson(Map<String, dynamic> json) =>
  //     _$EntryItemFromJson(json);
  // Map<String, dynamic> toJson() => _$EntryItemToJson(this);

}
