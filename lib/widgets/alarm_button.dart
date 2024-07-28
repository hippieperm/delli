import 'package:flutter/material.dart';

import '../common_widgets/common_svg.dart';
import '../styles/delli_color.dart';

class AlarmButton extends StatelessWidget {
  const AlarmButton({
    this.onTap,
    super.key,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Center(
        child: CommonSvg(
          width: 16.57,
          height: 20,
          assets: 'assets/icon/alarm_icon.svg',
          color: DelliColor.cgrayLt,
          onTap: onTap,
        ),
      ),
    );
  }
}