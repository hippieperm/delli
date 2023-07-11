import 'package:flutter/material.dart';

class SignUpModel with ChangeNotifier {
  late final Map<SignUpTextFieldsEnum, TextEditingController>
      textFieldControllers;

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
    };
  }


  bool buttonActivate(List<String> list) {
    for(String string in list) {
      if(string == "") return false;
    }
    return true;
  }
}

enum SignUpTextFieldsEnum {
  email,
  password,
  passwordCheck,
}
