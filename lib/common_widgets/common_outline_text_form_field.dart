import 'package:flutter/material.dart';

import '../styles/delli_color.dart';
import '../styles/delli_text_styles.dart';
import 'common_text.dart';

class CommonOutlineTextFormField extends StatelessWidget {
  const CommonOutlineTextFormField({
    this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.height,
    this.validator,
    this.controller,
    super.key,
  });

  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final double? height;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: DelliTextStyles.body1_500,
        decoration: InputDecoration(
          filled: true,
          fillColor: DelliColor.grayF4,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: DelliColor.grayF4,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: DelliColor.grayF4,
            ),
          ),
          hintText: hintText,
          hintStyle: DelliTextStyles.body1_500.apply(color: DelliColor.gray88),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          suffixIcon: suffixIcon,
          errorStyle: DelliTextStyles.body2.apply(
            color: DelliColor.redFF3B30,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: DelliColor.grayF4,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: DelliColor.redFF3B30,
            ),
          ),
          focusColor: DelliColor.main,
        ),
        validator: validator,
      ),
    );
  }
}
