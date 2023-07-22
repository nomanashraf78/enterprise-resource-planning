import 'package:enterprise_resource_planning/%20models/generat_entry_item_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'general_entery_model.g.dart';

@JsonSerializable()
class GeneralEntryModel {
  String entryID;
  DateTime date;
  String description;
  List<EntryItem> items;

  GeneralEntryModel({
    required this.entryID,
    required this.date,
    required this.description,
    required this.items,
  });

  factory GeneralEntryModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralEntryModelFromJson(json);
  Map<String, dynamic> toJson() => _$GeneralEntryModelToJson(this);


}
