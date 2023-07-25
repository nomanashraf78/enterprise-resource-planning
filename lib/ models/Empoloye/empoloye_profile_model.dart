class EmpoloyeProfileModel {
  String employeeId;
  String employeeName;
  String empoloyeEmail;
  String empoloyePhone;
  String empoloyeCountry;
  String employeeDesignation;
  EmpoloyeAddressModel empoloyeAddressModel;

  EmpoloyeProfileModel({
    required this.employeeId,
    required this.employeeName,
    required this.empoloyeEmail,
    required this.empoloyeAddressModel,
    required this.empoloyeCountry,
    required this.employeeDesignation,
    required this.empoloyePhone,
  });
}

class EmpoloyeAddressModel {
  String addressLine1;
  String addressLine2;
  String city;
  String state;
  String country;
  String zipCode;

  EmpoloyeAddressModel({
    required this.addressLine1,
    required this.addressLine2,
    required this.state,
    required this.city,
    required this.country,
    required this.zipCode,
  });
}
