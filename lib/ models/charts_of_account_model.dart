
import 'package:enterprise_resource_planning/%20models/chart_of_account_type_model.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ChartsOfAccountModel {
  String accountId;
  String accountName;
  String description; // additional account details
  TransactionTypeChartOfAccount transactionTypeChartOfAccount;
  TransactionSubTypeChartOfAccount transactionSubTypeChartOfAccount;
  double currentBalance; // The current balance in the account
  double currentBalanceWithSubAccounts; // The combined balance of this account and any sub-accounts it may have.

  ChartsOfAccountModel({
    required this.accountId,
    required this.accountName,
    required this.transactionTypeChartOfAccount,
    required this.transactionSubTypeChartOfAccount,
    required this.currentBalance,
    required this.currentBalanceWithSubAccounts,
    required this.description,
  });
}
