import 'package:flutter/material.dart';

import '../styles/delli_color.dart';
import '../common_widgets/common_svg.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
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
          width: 18,
          height: 18,
          assets: 'assets/icon/search_icon.svg',
          color: DelliColor.cgrayLt,
          onTap: onTap,
        ),
      ),
    );
  }
}
