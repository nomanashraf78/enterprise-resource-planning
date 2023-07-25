
 import 'package:json_annotation/json_annotation.dart';
 part 'journal_enteries_model.g.dart';

@JsonSerializable()
 class JournalEntry {
  String entryId;
  DateTime date;
  double amount;
  EntryType entryType;
  String description;
  String referenceId; // Reference to the invoice or bill

  JournalEntry({
    required this.entryId,
    required this.date,
    required this.amount,
    required this.entryType,
    required this.description,
    required this.referenceId,
 });

  factory JournalEntry.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryFromJson(json);
  Map<String, dynamic> toJson() => _$JournalEntryToJson(this);

 }

 enum EntryType {
   debit,
   credit
 }