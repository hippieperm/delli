import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_logo.dart';
import 'package:delli/pages/sign_up/widgets/sign_up_agreement_item.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/common_text_button.dart';
import '../../styles/delli_text_styles.dart';

class SignUpAgreementPage extends StatelessWidget {
  const SignUpAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 100),
          CommonTextLogo(
            width: 83,
            height: 33,
          ),
          SizedBox(height: 11),
          CommonText(
            text: "환영합니다!",
            textStyle: DelliTextStyles.header2,
          ),
          Spacer(),
          _AgreementBody(),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}

class _AgreementBody extends StatelessWidget {
  const _AgreementBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpAgreementItem(
          title: '서비스 이용약관',
        ),
        SignUpAgreementItem(
          color: DelliColor.main,
          title: '개인정보 수집 및 이용동의',
        ),
        SizedBox(height: 25),
        CommonTextButton(
          onPressed: () {},
          commonText: const CommonText(
            text: "다음",
            textStyle: DelliTextStyles.button,
            color: DelliColor.white,
          ),
          backgroundColor: DelliColor.main,
          height: 62,
        ),
      ],
    );
  }
}