import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_main_logo.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/pages/login/widgets/login_choice_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';

class LoginChoicePage extends StatelessWidget {
  const LoginChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      child: Column(
        children: [
          Spacer(),
          CommonMainLogo(
            width: 110,
            height: 104,
          ),
          Spacer(),
          _ChoiceBody(),
          SizedBox(height: 58),
        ],
      ),
    );
  }
}

class _ChoiceBody extends StatelessWidget {
  const _ChoiceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginChoiceButton(
          buttonColor: DelliColor.grayF4,
          prefixIcon: CommonSvg(
            path: "assets/icon/email_icon.svg",
            width: 20,
            height: 20,
            color: DelliColor.black,
          ),
          buttonText: "이메일로 시작하기",
          onTap: () {},
        ),
        const SizedBox(height: 16),
        LoginChoiceButton(
          buttonColor: const Color(0xfffee500),
          prefixIcon: Image.asset(
            "assets/icon/kakao_icon.png",
            width: 24,
            height: 22,
          ),
          buttonText: "카카오로 시작하기",
          onTap: () {},
        ),
        const SizedBox(height: 19),
        RichText(
          text: TextSpan(
            style: DelliTextStyles.body1.apply(
              color: DelliColor.black,
            ),
            children: [
              const TextSpan(text: "이미 계정이 있나요? "),
              TextSpan(
                text: "로그인",
                style: DelliTextStyles.body1.apply(
                  color: DelliColor.main,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
