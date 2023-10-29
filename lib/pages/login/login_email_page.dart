import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/common_outline_text_form_field.dart';

class LoginEmailPage extends StatelessWidget {
  const LoginEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool shownKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return CommonLayout(
      child: Column(
        children: [
          const Spacer(),
          const CommonSvg(
            assets: 'assets/logo/main_logo.svg',
            width: 86,
            height: 82,
          ),
          const SizedBox(height: 16),
          const CommonSvg(
            assets: 'assets/logo/text_logo.svg',
            width: 116,
            height: 45,
          ),
          const Spacer(),
          const _Body(),
          if(!shownKeyboard)
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonOutlineTextFormField(
          hintText: "이메일",
        ),
        const SizedBox(height: 16),
        CommonOutlineTextFormField(
          hintText: "비밀번호",
          obscureText: true,
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            CommonText(
              text: "계정 찾기",
              textStyle: DelliTextStyles.body2,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                context.push("/sign_up");
              },
              child: CommonText(
                text: "회원 가입",
                textStyle: DelliTextStyles.body2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 57),
        CommonTextButton(
          onPressed: () {},
          commonText: CommonText(
            text: "로그인",
            textStyle: DelliTextStyles.button,
            color: DelliColor.white,
          ),
          height: 62,
        ),
      ],
    );
  }
}

