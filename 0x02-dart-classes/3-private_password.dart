class Password {
  String _password;

  Password({required String password}) : _password = password;

  // Getter for password
  String get password => _password;

  // Setter for password
  set password(String newPass) {
    _password = newPass;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length >
