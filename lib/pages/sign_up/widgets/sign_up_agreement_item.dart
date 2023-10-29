import 'package:delli/common_widgets/common_svg.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_text.dart';
import '../../../styles/delli_color.dart';
import '../../../styles/delli_text_styles.dart';

class SignUpAgreementItem extends StatelessWidget {
  const SignUpAgreementItem({
    required this.title,
    this.color = DelliColor.grayD7,
    this.required = true,
    this.onTap,
    super.key,
  });

  final String title;
  final Color color;
  final bool required;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: CommonSvg(
              assets: 'assets/icon/checkbox_icon.svg',
              color: color,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(width: 8),
          CommonText(
            text: title,
            textStyle: DelliTextStyles.body1,
            color: DelliColor.black,
          ),
          const SizedBox(width: 8),
          CommonText(
            text: required ? '(필수)' : '(선택)',
            textStyle: DelliTextStyles.body1,
            color: DelliColor.gray88,
          ),
        ],
      ),
    );
  }
}
