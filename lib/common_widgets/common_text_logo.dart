import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonTextLogo extends StatelessWidget {
  const CommonTextLogo({
    this.color = DelliColor.main,
    this.blendMode = BlendMode.srcIn,
    this.height = 33,
    this.width = 83,
    Key? key,
  }) : super(key: key);

  final Color color;
  final BlendMode blendMode;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/logo/text_logo.svg",
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(
        color,
        blendMode,
      ),
    );
  }
}
