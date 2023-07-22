// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_slip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalarySlipModel _$SalarySlipModelFromJson(Map<String, dynamic> json) =>
    SalarySlipModel(
      payslipId: json['payslipId'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      allowance: (json['allowance'] as num).toDouble(),
      amountPaid: (json['amountPaid'] as num).toDouble(),
      basicSalary: (json['basicSalary'] as num).toDouble(),
      deductions: (json['deductions'] as num).toDouble(),
      employeeId: json['employeeId'] as String,
      netSalary: (json['netSalary'] as num).toDouble(),
    );

Map<String, dynamic> _$SalarySlipModelToJson(SalarySlipModel instance) =>
    <String, dynamic>{
      'payslipId': instance.payslipId,
      'employeeId': instance.employeeId,
      'amountPaid': instance.amountPaid,
      'dateTime': instance.dateTime.toIso8601String(),
      'basicSalary': instance.basicSalary,
      'allowance': instance.allowance,
      'deductions': instance.deductions,
      'netSalary': instance.netSalary,
    };
