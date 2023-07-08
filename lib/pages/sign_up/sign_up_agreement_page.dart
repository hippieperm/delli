import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/common_widgets/common_text_logo.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/common_text_button.dart';
import '../../styles/delli_text_styles.dart';

class SignUpAgreementPage extends StatelessWidget {
  const SignUpAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          const CommonTextLogo(
            color: DelliColor.main,
            width: 83,
            height: 33,
          ),
          const SizedBox(height: 13),
          const CommonText(
            text: "환영합니다!",
            textStyle: DelliTextStyles.header2,
          ),
          const Spacer(),
          _AgreementBody(),
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}

class _AgreementBody extends StatefulWidget {
  @override
  _AgreementBodyState createState() => _AgreementBodyState();
}

class _AgreementBodyState extends State<_AgreementBody> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  void toggleCheck1() {
    setState(() {
      isChecked1 = !isChecked1;
    });
  }

  void toggleCheck2() {
    setState(() {
      isChecked2 = !isChecked2;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = isChecked1 && isChecked2;

    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            children: [
              InkWell(
                onTap: toggleCheck1,
                child: isChecked1
                    ? CommonSvg(path: "assets/icon/check_icon.svg")
                    : CommonSvg(
                        path: "assets/icon/check_icon.svg",
                        color: DelliColor.grayD7,
                      ),
              ),
              const SizedBox(width: 8),
              const CommonText(
                text: "서비스 이용약관",
                textStyle: DelliTextStyles.body1,
              ),
              const SizedBox(width: 8),
              const CommonText(
                text: "(필수)",
                textStyle: DelliTextStyles.body1,
                color: DelliColor.gray88,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: Row(
            children: [
              InkWell(
                onTap: toggleCheck2,
                child: isChecked2
                    ? CommonSvg(path: "assets/icon/check_icon.svg")
                    : CommonSvg(
                        path: "assets/icon/check_icon.svg",
                        color: DelliColor.grayD7,
                      ),
              ),
              const SizedBox(width: 8),
              const CommonText(
                text: "개인정보 수집 및 이용동의",
                textStyle: DelliTextStyles.body1,
              ),
              const SizedBox(width: 8),
              const CommonText(
                text: "(필수)",
                textStyle: DelliTextStyles.body1,
                color: DelliColor.gray88,
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        CommonTextButton(
          onPressed: isButtonEnabled
              ? () {
                  print("체크박스 && 버튼 클릭");
                }
              : null,
          commonText: const CommonText(
            text: "다음",
            textStyle: DelliTextStyles.button,
            color: DelliColor.white,
          ),
          backgroundColor:
              isButtonEnabled ? DelliColor.main : DelliColor.grayD7,
          height: 67,
        ),
      ],
    );
  }
}
