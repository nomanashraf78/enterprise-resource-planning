
import 'package:json_annotation/json_annotation.dart';
part 'salary_slip_model.g.dart';

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

  SalarySlipModel({
    required this.payslipId,
    required this.dateTime,
    required this.allowance,
    required this.amountPaid,
    required this.basicSalary,
    required this.deductions,
    required this.employeeId,
    required this.netSalary,
  });

  factory SalarySlipModel.fromJson(Map<String, dynamic> json) =>
      _$SalarySlipModelFromJson(json);
  Map<String, dynamic> toJson() => _$SalarySlipModelToJson(this);

}
