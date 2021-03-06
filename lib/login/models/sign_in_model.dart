import 'package:flutter/material.dart';
import 'package:pet_shelter/services/basic_network_service.dart';

class SignInModel extends ChangeNotifier {
  String _email = "";
  String _password = "";
  final BasicNetworkService _networkService;

  SignInModel(this._networkService);

  bool signInError = false;

  void onEmailChanged(String emailValue) {
    _email = emailValue;
  }

  void onPasswordChanged(String passwordValue) {
    _password = passwordValue;
  }

  Future<void> signIn() async {
    try {
      // TODO: sign in
      await _networkService.healthCheck();
    } catch(error) {
      print("Network Service error: $error");
      signInError = true;
      notifyListeners();
    }
  }
}