class AppValidator {
  static String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String? emailValidator(String? value) {
    RegExp regex = RegExp(emailPattern);
    if (value!.isEmpty) {
      return "Please enter your email";
    } else if (!regex.hasMatch(value)) {
      return "Please enter valid email or Number";
    }
    return null;
  }

  static String? numberValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your Mobile No";
    } else if (value.length < 10) {
      return "Please enter valid Mobile No";
    }
    return null;
  }

  static String? changeEmailValidator(String? value, String? secondValue) {
    if (value == secondValue) {
      return "The values of both emails are same";
    }
    return null;
  }

  static String? displayNameValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Name";
    }
    return null;
  }

  static String? registerEmailValidator(String? value) {
    RegExp regex = RegExp(emailPattern);
    if ((value ?? "").isEmpty) {
      return "Please enter your email";
    } else if (!regex.hasMatch(value ?? "")) {
      return "Please enter valid email";
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your OTP";
    } else {
      return null;
    }
  }

  static String? nameValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your name";
    } else {
      return null;
    }
  }

  static String? phoneValidator(String? value) {
    if (value == '') {
      return "Please enter your phone no";
    } else {
      return null;
    }
  }

  static String? qualificationValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Qualification";
    } else {
      return null;
    }
  }

  static String? gstNoValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your gst number";
    } else {
      return null;
    }
  }

  static String? companyValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Company Name";
    } else {
      return null;
    }
  }

  static String? bankNameValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Bank Name";
    } else {
      return null;
    }
  }

  static String? bankBranchValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Bank Branch Name";
    } else {
      return null;
    }
  }

  static String? bankIfscValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Bank IFSC Code";
    } else {
      return null;
    }
  }

  static String? bankAccountNumberValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Bank Account Number";
    } else {
      return null;
    }
  }

  static String? addressValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your address";
    } else {
      return null;
    }
  }

  static String? pinCodeValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Pin Code";
    } else {
      return null;
    }
  }

  static String? dobValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please enter your Date of Birth";
    } else {
      return null;
    }
  }

  static String? genderValidator(String? value) {
    if ((value ?? "").isEmpty) {
      return "Please Select Your Gender";
    } else {
      return null;
    }
  }

  static String? confirmPasswordValidator(String? value, String? password) {
    if ((value ?? "").isEmpty) {
      return "Please re-enter your password";
    } else if ((value?.length ?? 0) < 8) {
      return "Please enter minimum 8 characters";
    } else if (value != password) {
      return "Password does not match";
    } else {
      return null;
    }
  }

  static String? otpValidation(String? value) {
    if ((value ?? "").isEmpty) {
      return 'Enter Verification Code';
    } else {
      return null;
    }
  }
}
