import 'package:enterprise_resource_planning/%20models/Customer/customer_order_history_model.dart';
import 'package:enterprise_resource_planning/%20models/Customer/customer_support_ticket_model.dart';

class CustomerModel {
  String customerId;
  String companyId;
  String customerType;
  String customerName;
  String customerEmail;
  String customerPhone;
  String customerMobile;
  CustomerAddressModel billingAddress;
  CustomerAddressModel shippingAddress;
 // List<CustomerOrderHistory> orderHistory;
 // List<CustomerSupportTicket> supportTicket;
  DateTime
      createdAt; // The date and time the customer was created in your system
  DateTime
      updatedAt; // The date and time the customer was last updated in your system
  CustomerTerms customerTerms;
  String notes;
  String contactPerson;

  CustomerModel({
    required this.companyId,
    required this.customerId,
    required this.customerType,
    required this.updatedAt,
    required this.createdAt,
    required this.billingAddress,
    required this.customerEmail,
    required this.customerMobile,
    required this.customerName,
    required this.customerPhone,
    required this.shippingAddress,
   // required this.supportTicket,
   // required this.orderHistory,
    required this.notes,
    required this.customerTerms,
    required this.contactPerson,
  });
}

class CustomerAddressModel {
  String addressLine1;
  String addressLine2;
  String city;
  String state;
  String country;
  String zipCode;

  CustomerAddressModel({
    required this.addressLine1,
    required this.addressLine2,
    required this.state,
    required this.city,
    required this.country,
    required this.zipCode,
  });
}
enum CustomerTerms {
  net30,
  net60,
  net90,
  dueOnReceipt,
}
