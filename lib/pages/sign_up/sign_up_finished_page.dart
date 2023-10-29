import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpFinishedPage extends StatelessWidget {
  const SignUpFinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 102),
          CommonSvg(
            assets: 'assets/logo/text_logo.svg',
            width: 83,
            height: 33,
          ),
          SizedBox(height: 11),
          CommonText(
            text: '닉네임님 환영합니다!',
            textStyle: DelliTextStyles.header2,
            color: DelliColor.black,
          ),
          Spacer(),
          CommonTextButton(
            onPressed: () {},
            height: 62,
            commonText: CommonText(
              text: '델리 시작하기',
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
