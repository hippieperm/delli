import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonMainLogo extends StatelessWidget {
  const CommonMainLogo({
    this.width = 50,
    this.height = 50,
    this.color = DelliColor.main,
    this.blendMode = BlendMode.srcIn,
    super.key,
  });

  final Color color;
  final BlendMode blendMode;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo/main_logo.svg',
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(color, blendMode),
    );
  }
}
