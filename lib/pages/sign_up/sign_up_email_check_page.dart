import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpEmailCheckPage extends StatelessWidget {
  const SignUpEmailCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 55),
          CommonText(
            text: '입력하신 이메일로 인증메일이\n발송되었습니다.\n이메일 인증을 완료해 주세요.',
            textStyle: DelliTextStyles.header3,
          ),
          SizedBox(height: 38),
          //todo: 컨테이너 -> 텍스트필드
          Container(
            width: double.infinity,
            height: 50,
            color: DelliColor.grayF4,
          ),
          Spacer(),
          CommonTextButton(
            onPressed: () {},
            height: 62,
            commonText: CommonText(text: "다음"),
          ),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}
