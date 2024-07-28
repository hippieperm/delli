import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:delli/utilities/validator_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/common_outline_text_form_field.dart';
import '../../styles/delli_color.dart';

class SignUpEmailPasswdPage extends StatefulWidget {
  const SignUpEmailPasswdPage({super.key});

  @override
  State<SignUpEmailPasswdPage> createState() => _SignUpEmailPasswdPageState();
}

class _SignUpEmailPasswdPageState extends State<SignUpEmailPasswdPage> {
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    bool shownKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return CommonLayout(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 83),
            const CommonText(
              text: '델리에서 회원가입을 위해\n이메일과 비밀번호를 입력해 주세요.',
              textStyle: DelliTextStyles.header3,
              color: DelliColor.black,
            ),
            const SizedBox(height: 38),
            CommonOutlineTextFormField(
              height: 77,
              hintText: '이메일 주소를 입력해 주세요.',
              validator: (value) {
                return ValidatorHelper.emailValidator(value);
              },
            ),
            const SizedBox(height: 18),
            CommonOutlineTextFormField(
              height: 77,
              hintText: '비밀번호를 입력해 주세요.',
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 24,
                    color: DelliColor.grayBB,
                  ),
                ),
              ),
              obscureText: true,
              validator: (value) {
                return ValidatorHelper.passwordValidator(value);
              },
            ),
            const SizedBox(height: 7),
            CommonOutlineTextFormField(
              height: 77,
              hintText: '한번 더 비밀번호를 입력해 주세요.',
              obscureText: true,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 24,
                    color: DelliColor.grayBB,
                  ),
                ),
              ),
              validator: (value) {

              },
            ),
            const Spacer(),
            if(!shownKeyboard)
            CommonTextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
                context.push("/sign_up/email_check");
              },
              height: 62,
              commonText: const CommonText(
                text: '다음',
                textStyle: DelliTextStyles.button,
                color: DelliColor.white,
              ),
            ),
            if(!shownKeyboard)
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
