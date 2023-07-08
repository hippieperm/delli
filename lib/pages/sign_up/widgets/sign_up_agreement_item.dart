import 'package:delli/common_widgets/common_svg.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_text.dart';
import '../../../styles/delli_color.dart';
import '../../../styles/delli_text_styles.dart';

class SignUpAgreementItem extends StatelessWidget {
  const SignUpAgreementItem({
    required this.color,
    required this.title,
    required this.subTitle,
    this.onTap,
    super.key,
  });

  final Color color;
  final String title;
  final String subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: GestureDetector(
              onTap: onTap,
              child: CommonSvg(
                path: 'assets/icon/checkbox_icon.svg',
                color: color,
              ),
            ),
          ),
          const SizedBox(width: 8),
          CommonText(
            text: title,
            textStyle: DelliTextStyles.body1,
          ),
          const SizedBox(width: 8),
          CommonText(
            text: subTitle,
            textStyle: DelliTextStyles.body1,
            color: DelliColor.gray88,
          ),
        ],
      ),
    );
  }
}
