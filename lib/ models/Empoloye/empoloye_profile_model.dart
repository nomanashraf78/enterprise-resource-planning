class EmpoloyeProfileModel {
  String employeeId;
  String firstName;
  String lastName;
  String empoloyeEmail;
  String empoloyePhone;
  String empoloyeMobile;
  String empoloyeCountry;
  String employeeDesignation;
  EmpoloyeAddressModel empoloyeAddressModel;
  EmpoloyeType empoloyeType;
  String jobTitle;
  String department;
  DateTime joiningDate;
  SalaryDetails salaryDetails;
  BankDetails bankDetails;
  String employeeNumber; // unique number
  bool isActive;
  PaySchedule paySchedule;
  AttendanceModel attendanceModel;

  EmpoloyeProfileModel({
    required this.employeeId,
    required this.firstName,
    required this.lastName,
    required this.empoloyeEmail,
    required this.empoloyeAddressModel,
    required this.empoloyeCountry,
    required this.employeeDesignation,
    required this.empoloyePhone,
    required this.empoloyeMobile,
    required this.empoloyeType,
    required this.jobTitle,
    required this.department,
    required this.joiningDate,
    required this.bankDetails,
    required this.salaryDetails,
    required this.employeeNumber,
    required this.isActive,
    required this.paySchedule,
    required this.attendanceModel
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

 enum EmpoloyeType{
  fullTime,
  partTime,
  contract
 }

class SalaryDetails {
  double annualSalary;
  double monthlySalary;
  double hourlyRate;

  SalaryDetails({
    required this.annualSalary,
    required this.monthlySalary,
    required this.hourlyRate,
  });
}

class BankDetails {
  String bankName;
  String accountNumber;
  String accountHolderName;


  BankDetails({
    required this.bankName,
    required this.accountNumber,
    required this.accountHolderName,
  });
}

enum PaySchedule {
  weekly,
  biWeekly,
  monthly,
}

class AttendanceModel {
  String employeeId;
  DateTime date;
  DateTime checkInTime;
  DateTime checkOutTime;

  AttendanceModel({
    required this.employeeId,
    required this.date,
    required this.checkInTime,
    required this.checkOutTime,
  });
}

