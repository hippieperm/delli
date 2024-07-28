import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/pages/login/widgets/login_choice_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginChoicePage extends StatelessWidget {
  const LoginChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      child: Column(
        children: [
          Spacer(),
          CommonSvg(
            width: 86,
            height: 82,
            assets: 'assets/logo/main_logo.svg',
          ),
          SizedBox(height: 16),
          CommonSvg(
            assets: 'assets/logo/text_logo.svg',
            width: 116,
            height: 45,
          ),
          Spacer(),
          _ChoiceBody(),
          SizedBox(height: 55),
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
          prefixIcon: const CommonSvg(
            assets: "assets/icon/email_icon.svg",
            width: 24,
            height: 20,
            color: DelliColor.black,
          ),
          buttonText: "이메일로 시작하기",
          onTap: () {
            context.push("/login_email");
          },
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
      ],
    );
  }
}
