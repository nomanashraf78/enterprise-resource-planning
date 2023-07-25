import 'package:enterprise_resource_planning/%20models/Vendor/vendor_transction_model.dart';

class VendorModel {
  String vendorId;
  String companyId;
  String vendorName;
  String vendorType;
  String vendorEmail;
  String vendorPhone;
  String vendorMobile;
  String notes; // Additional notes or comments about the vendor
  DateTime createdAt; // The date and time the vendor was created in your system
  DateTime
      updatedAt; // The date and time the vendor was last updated in your system
  VendorAddressModel vendorAddressModel;
  VendorPaymentTerms vendorPaymentTerms;
  List<VendorTransactionModel> transactions;

  VendorModel(
      {required this.vendorId,
      required this.companyId,
        required this.vendorType,
      required this.vendorPaymentTerms,
      required this.vendorAddressModel,
      required this.createdAt,
      required this.notes,
      required this.updatedAt,
      required this.vendorEmail,
      required this.vendorMobile,
      required this.vendorName,
      required this.vendorPhone,
      required this.transactions});
}

class VendorAddressModel {
  String addressLine1;
  String addressLine2;
  String street;
  String city;
  String state;
  String country;
  String zipCode;

  VendorAddressModel({
    required this.addressLine1,
    required this.addressLine2,
    required this.state,
    required this.city,
    required this.country,
    required this.street,
    required this.zipCode,
  });
}

enum VendorPaymentTerms {
  noTerms,
  dueOnReceipt,
  net15,
  net30,
}
