class Password {
  String _password;

  Password({required String password}) : _password = password;

  // Getter using get keyword
  String get password => _password;

  // Setter using set keyword
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUpper = _password.contains(RegExp(r'[A-Z]'));
    bool hasLower = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'[0-9]'));

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
