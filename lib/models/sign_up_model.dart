import 'package:flutter/material.dart';

class SignUpModel with ChangeNotifier {
  late final Map<SignUpTextFieldsEnum, TextEditingController> textFieldControllers;

  void init() {
    textFieldControllers = {
      SignUpTextFieldsEnum.email: TextEditingController()
        ..addListener(() {
          notifyListeners();
        }),
      SignUpTextFieldsEnum.password: TextEditingController()
        ..addListener(() {
          notifyListeners();
        }),
      SignUpTextFieldsEnum.passwordCheck: TextEditingController()
        ..addListener(() {
          notifyListeners();
        }),
      SignUpTextFieldsEnum.phoneNumber: TextEditingController()
        ..addListener(() {
          notifyListeners();
        }),
      SignUpTextFieldsEnum.phoneAuthCode: TextEditingController()
        ..addListener(() {
          notifyListeners();
        }),
    };
  }

  bool buttonActivate(List<String> list) {
    for (String string in list) {
      if (string == "") return false;
    }
    return true;
  }

  @override
  void dispose() {
    textFieldControllers.forEach((key, value) {
      value.dispose();
    });
    super.dispose();
  }
}

enum SignUpTextFieldsEnum {
  email,
  password,
  passwordCheck,
  phoneNumber,
  phoneAuthCode,
}
