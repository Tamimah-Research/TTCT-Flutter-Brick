
/// Validation Function for email
bool isEmailValid(String? email) {
  final emailRegex = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  return emailRegex.hasMatch(email!);
}

/// Validate UserName ex: grt_vishnu
bool isUserNameValid(String? userName) {
  const pattern = r'^[A-Za-z0-9_ -]{3,30}$';
  final regExp = RegExp(pattern);
  return regExp.hasMatch(userName!);
}

/// Validate Password ex: Vishnu@123
bool isPassWordValid(String? password) {
  const pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$';
  final regExp = RegExp(pattern);
  return regExp.hasMatch(password!);
}

bool isPhoneNoValid(String? phoneNo) {
  if (phoneNo == null || phoneNo.length < 8) {
    return false;
  } else {
    return true;
  }
}