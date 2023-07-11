import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/pages/sign_up/sign_up_email_passwd_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/sign_up_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpModel()..init(),
        builder: (context, child) {
          return Container(); //Container 대신 테스트할페이지 넣으시오.
        }
    );
  }
}
