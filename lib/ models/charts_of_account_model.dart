
import 'package:enterprise_resource_planning/%20models/chart_of_account_type_model.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ChartsOfAccountModel {
  String accountId;
  String accountName; // balance
  TransactionTypeChartOfAccount transactionTypeChartOfAccount;
  TransactionSubTypeChartOfAccount transactionSubTypeChartOfAccount;

  ChartsOfAccountModel({
    required this.accountId,
    required this.accountName,
    required this.transactionTypeChartOfAccount,
    required this.transactionSubTypeChartOfAccount
  });
}
