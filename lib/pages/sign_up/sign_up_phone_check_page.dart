import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_outline_text_form_field.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpPhoneCheckPage extends StatelessWidget {
  const SignUpPhoneCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 55),
          const CommonText(
            text: '델리에서 회원가입을 위해\n휴대전화 번호를 인증해 주세요',
            textStyle: DelliTextStyles.header3,
            color: DelliColor.black,
          ),
          const SizedBox(height: 9),
          const CommonText(
            text: '휴대전화 번호는 본인 인증을 위해서만 사용됩니다.',
            textStyle: DelliTextStyles.body2,
            color: DelliColor.gray88,
          ),
          const SizedBox(height: 37),
          Row(
            children: [
              const Expanded(
                child: CommonOutlineTextFormField(
                  hintText: '휴대전화 번호를 입력해 주세요.',
                ),
              ),
              const SizedBox(width: 12),
              CommonTextButton(
                onPressed: () {},
                commonText: const CommonText(
                  text: '인증 요청',
                  textStyle: DelliTextStyles.body1_500,
                ),
                width: 92,
                height: 50,
              ),
            ],
          ),
          const SizedBox(height: 27),
          const CommonOutlineTextFormField(
            hintText: '인증번호를 입력해 주세요.',
          ),
          const Spacer(),
          CommonTextButton(
            onPressed: () {},
            commonText: const CommonText(
              text: '다음',
              textStyle: DelliTextStyles.button,
            ),
            height: 62,
          ),
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}
