import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_outline_text_form_field.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpNicknameSetupPage extends StatelessWidget {
  const SignUpNicknameSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 83),
          CommonText(
            text: '델리에서 사용할\n대표 닉네임을 입력해 주세요.',
            textStyle: DelliTextStyles.header3,
            color: DelliColor.black,
          ),
          SizedBox(height: 38),
          CommonOutlineTextFormField(
            // TODO: 힌트텍스트 미정 추후 픽스
            hintText: '미정',
          ),
          Spacer(),
          CommonTextButton(
            onPressed: () {},
            height: 62,
            commonText: CommonText(
              text: '다음',
              textStyle: DelliTextStyles.button,
              color: DelliColor.white,
            ),
          ),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}
