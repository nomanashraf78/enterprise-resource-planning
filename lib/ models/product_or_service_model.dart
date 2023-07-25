import 'package:enterprise_resource_planning/%20models/journal_enteries_model.dart';

class ProductServiceModel {
  String productId;
  String productName;
  String description;
  double sellingPrice;
  double costPrice;
  double taxRate;
  IncomeCategory incomeCategory;
  List<JournalEntry> journalEntries;



  ProductServiceModel({
    required this.productId,
    required this.productName,
    required this.description,
    required this.sellingPrice,
    required this.costPrice,
    required this.taxRate,
    required this.incomeCategory,
    required this.journalEntries,
  });
}


enum IncomeCategory {
  SalesRetail,
  SalesWholesale,
  Services,
  InterestIncome,

}

