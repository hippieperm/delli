import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/common_outline_text_form_field.dart';
import '../../styles/delli_color.dart';

class SignUpEmailPasswdPage extends StatelessWidget {
  const SignUpEmailPasswdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 83),
          CommonText(
            text: '델리에서 회원가입을 위해\n이메일과 비밀번호를 입력해 주세요.',
            textStyle: DelliTextStyles.header3,
          ),
          SizedBox(height: 38),
          SizedBox(
            height: 50,
            child: CommonOutlineTextFormField(hintText: '이메일 주소를 입력해주세요.'),
          ),
          SizedBox(height: 45),
          SizedBox(
            height: 50,
            child: CommonOutlineTextFormField(
              hintText: '비밀번호를 입력해주세요.',
              obscureText: true,
            ),
          ),
          SizedBox(height: 34),
          SizedBox(
            height: 50,
            child: CommonOutlineTextFormField(
              hintText: '한번 더 비밀번호를 입력해주세요.',
              obscureText: true,
            ),
          ),
          Spacer(),
          CommonTextButton(
            onPressed: () {},
            height: 62,
            commonText: CommonText(
              text: '다음',
              textStyle: DelliTextStyles.button,
            ),
          ),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}
