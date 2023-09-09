import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/common_outline_text_form_field.dart';

class SignUpEmailCheckPage extends StatelessWidget {
  const SignUpEmailCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 55),
          const CommonText(
            text: '입력하신 이메일로 인증메일이\n발송되었습니다.\n이메일 인증을 완료해 주세요.',
            textStyle: DelliTextStyles.header3,
            color: DelliColor.black,
          ),
          const SizedBox(height: 38),
          CommonOutlineTextFormField(hintText: '인증 코드(6자리)를 입력해 주세요.'),
          const Spacer(),
          CommonTextButton(
            onPressed: () {
              context.push("/sign_up/phone_check");
            },
            height: 62,
            commonText: const CommonText(
              text: "다음",
              textStyle: DelliTextStyles.button,
              color: DelliColor.white,
            ),
          ),
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}
