import 'package:flutter/material.dart';

import '../styles/delli_color.dart';
import '../styles/delli_text_styles.dart';

class CommonOutlineTextFormField extends StatelessWidget {
  const CommonOutlineTextFormField({
    this.hintText,
    this.obscureText = false,
    super.key,
  });

  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      ),
    );
  }
}
