import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginSignUp extends ChangeNotifier {
  bool obscurePasswordLogin = true;
  bool obscurePasswordSignUp = true;
  String? token;
  bool isLoading = false;
  void showPasswordForLogin() {
    obscurePasswordLogin = !obscurePasswordLogin;
    notifyListeners();
  }

  void showPasswordForSignUp() {
    obscurePasswordSignUp = !obscurePasswordSignUp;
    notifyListeners();
  }

  void showLoadingIndicator() {
    isLoading = true;
    notifyListeners();
  }

  void notShowLoadingIndicator() {
    isLoading = false;
    notifyListeners();
  }

  void getToken(http.Response response) {
    var data = jsonDecode(response.body);
    var tokenData = data['token'];
    token = tokenData;
    notifyListeners();
  }
}
