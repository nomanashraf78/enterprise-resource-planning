
import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';
import 'package:json_annotation/json_annotation.dart';
//part 'salary_slip_model.g.dart';

@JsonSerializable()
class SalarySlipModel {
  String payslipId;
  String employeeId;
  double amountPaid;
  DateTime dateTime;
  double basicSalary;
  double allowance; // Sum of all allowances
  double deductions; // Sum of all deductions
  double netSalary; // Calculated as basicSalary + allowance - deductions
  List<JournalEntry> journalEntries;

  SalarySlipModel({
    required this.payslipId,
    required this.dateTime,
    required this.allowance,
    required this.amountPaid,
    required this.basicSalary,
    required this.deductions,
    required this.employeeId,
    required this.netSalary,
    required this.journalEntries,
  });

  // factory SalarySlipModel.fromJson(Map<String, dynamic> json) =>
  //     _$SalarySlipModelFromJson(json);
  // Map<String, dynamic> toJson() => _$SalarySlipModelToJson(this);

}
