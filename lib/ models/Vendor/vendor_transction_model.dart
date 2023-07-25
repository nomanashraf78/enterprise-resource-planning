class VendorTransactionModel {
  String vendorId;
  String transactionId;
  DateTime transactionDate;
  double transactionAmount;
  String description;
  TransactionType transactionType;
  PaymentStatus paymentStatus;

  VendorTransactionModel({
    required this.transactionId,
    required this.vendorId,
    required this.transactionDate,
    required this.transactionAmount,
    required this.description,
    required this.transactionType,
    required this.paymentStatus,
  });
}

enum TransactionType {
  invoice,
  payment,
  refund,
}

enum PaymentStatus {
  paid,
  unpaid,
  overdue,
}
