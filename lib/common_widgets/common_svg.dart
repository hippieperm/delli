import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSvg extends StatelessWidget {
  const CommonSvg({
    required this.path,
    this.width,
    this.height,
    this.color = DelliColor.main,
    this.blendMode = BlendMode.srcIn,
    Key? key,
  }) : super(key: key);

  final String path;
  final double? width;
  final double? height;
  final Color color;
  final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(
        color,
        blendMode,
      ),
    );
  }
}
