import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:delli/utilities/validator_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/common_outline_text_form_field.dart';
import '../../models/sign_up_model.dart';
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
    final singUpModel = context.read<SignUpModel>();

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
              controller:
                  singUpModel.textFieldControllers[SignUpTextFieldsEnum.email],
              height: 77,
              hintText: '이메일 주소를 입력해 주세요.',
              validator: (value) {
                return ValidatorHelper.emailValidator(value);
              },
            ),
            const SizedBox(height: 18),
            CommonOutlineTextFormField(
              controller: singUpModel
                  .textFieldControllers[SignUpTextFieldsEnum.password],
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
              controller: singUpModel
                  .textFieldControllers[SignUpTextFieldsEnum.passwordCheck],
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
                return ValidatorHelper.compareValidator(
                  value,
                  singUpModel
                      .textFieldControllers[SignUpTextFieldsEnum.password]!
                      .text,
                );
              },
            ),
            const Spacer(),
            Consumer<SignUpModel>(builder: (context, model, child) {
              return CommonTextButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {

                  }
                },
                enabled: singUpModel.buttonActivate(
                  [
                    singUpModel
                        .textFieldControllers[SignUpTextFieldsEnum.email]!.text,
                    singUpModel
                        .textFieldControllers[SignUpTextFieldsEnum.password]!
                        .text,
                    singUpModel
                        .textFieldControllers[
                            SignUpTextFieldsEnum.passwordCheck]!
                        .text,
                  ],
                ),
                height: 62,
                commonText: const CommonText(
                  text: '다음',
                  textStyle: DelliTextStyles.button,
                  color: DelliColor.white,
                ),
              );
            }),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
