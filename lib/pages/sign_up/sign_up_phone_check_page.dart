import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_outline_text_form_field.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_button.dart';
import 'package:delli/models/sign_up_model.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:delli/utilities/validator_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPhoneCheckPage extends StatefulWidget {
  const SignUpPhoneCheckPage({super.key});

  @override
  State<SignUpPhoneCheckPage> createState() => _SignUpPhoneCheckPageState();
}

class _SignUpPhoneCheckPageState extends State<SignUpPhoneCheckPage> {
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final signUpModel = context.read<SignUpModel>();

    return CommonLayout(
      child: Form(
        key: _formKey,
        //TODO: 여기까지 함
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(height: 38),
            Row(
              children: [
                Expanded(
                  child: CommonOutlineTextFormField(
                    hintText: '휴대전화 번호를 입력해 주세요.',
                    controller: signUpModel.textFieldControllers[SignUpTextFieldsEnum.phoneNumber],
                  ),
                ),
                const SizedBox(width: 12),
                Consumer<SignUpModel>(
                  builder: (context, value, child) {
                    return CommonTextButton(
                      onPressed: () {},
                      enabled: signUpModel.buttonActivate(
                        [
                          signUpModel.textFieldControllers[SignUpTextFieldsEnum.phoneNumber]!.text,
                        ],
                      ),
                      commonText: const CommonText(
                        text: '인증 요청',
                        textStyle: DelliTextStyles.body1_500,
                        color: DelliColor.white,
                      ),
                      width: 92,
                      height: 50,
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 27),
            CommonOutlineTextFormField(
              hintText: '인증번호를 입력해 주세요.',
              controller: signUpModel.textFieldControllers[SignUpTextFieldsEnum.phoneAuthCode],
              validator: (value) {
                if (value != '000000') {
                  return '인증번호가 일치하지 않습니다.';
                }
                return null;
              },
            ),
            const Spacer(),
            Consumer<SignUpModel>(
              builder: (context, value, child) {
                return CommonTextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  enabled: signUpModel.buttonActivate(
                    [
                      signUpModel.textFieldControllers[SignUpTextFieldsEnum.phoneNumber]!.text,
                      signUpModel.textFieldControllers[SignUpTextFieldsEnum.phoneAuthCode]!.text,
                    ],
                  ),
                  commonText: const CommonText(
                    text: '다음',
                    textStyle: DelliTextStyles.button,
                  ),
                  height: 62,
                );
              },
            ),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
