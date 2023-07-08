import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    required this.onPressed,
    required this.commonText,
    this.height,
    this.width,
    this.backgroundColor = DelliColor.main,
    this.enabled,
    this.borderRadius = 8,
    super.key,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final Color backgroundColor;

  final CommonText commonText;

  final bool? enabled;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: enabled == null
            ? onPressed
            : enabled == true
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: commonText,
      ),
    );
  }
}
