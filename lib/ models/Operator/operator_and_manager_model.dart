import 'package:enterprise_resource_planning/%20models/Customer/customer_profile_model.dart';
import 'package:enterprise_resource_planning/%20models/Empoloye/empoloye_profile_model.dart';
import 'package:enterprise_resource_planning/%20models/Vendor/vendor_model.dart';

class OperatorAndManagerModel {
  String userId;
  String firstName;
  String lastName;
  String email;
  String phone;
  Role role;
  AccountType accountType;
  List<Permission> permissions;
  List<CustomerModel> managedCustomers;
  List<VendorModel> managedVendors;
  List<EmpoloyeProfileModel> managedEmployees;

  OperatorAndManagerModel({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.role,
    required this.accountType,
    required this.permissions,
    required this.managedCustomers,
    required this.managedEmployees,
    required this.managedVendors
  });
}

enum Role {
  operator,
  manager
}

enum AccountType {
  vendor,
  employee,
  customer
}

enum Permission {
  createAccount,
  readAccount,
  updateAccount,
  deleteAccount,
}
