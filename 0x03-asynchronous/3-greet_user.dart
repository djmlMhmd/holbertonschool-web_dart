import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final String userData = await fetchUserData();
    final Map<String, dynamic> jsonData = jsonDecode(userData);
    final String username = jsonData['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final bool credentials = await checkCredentials();
    if (credentials) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

