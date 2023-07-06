import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/common_text.dart';
import '../../../styles/delli_color.dart';
import '../../../styles/delli_text_styles.dart';

class LoginChoiceButton extends StatelessWidget {
  const LoginChoiceButton({
    required this.buttonColor,
    required this.prefixIcon,
    required this.buttonText,
    this.radius = 8,
    this.onTap,
    super.key,
  });

  final double radius;
  final Color buttonColor;
  final Widget prefixIcon;
  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        height: 50,
        child: Row(
          children: [
            const SizedBox(width: 16),
            prefixIcon,
            const Spacer(),
            CommonText(
              text: buttonText,
              textStyle: DelliTextStyles.body1,
              color: DelliColor.black,
            ),
            const Spacer(),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}