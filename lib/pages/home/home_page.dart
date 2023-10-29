import 'package:delli/common_widgets/common_app_bar.dart';
import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:flutter/material.dart';

import '../../widgets/alarm_button.dart';
import '../../widgets/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      appBar: CommonAppBar(
        title: const CommonSvg(
          assets: 'assets/logo/text_logo.svg',
          width: 52,
          height: 24,
        ),
        titleSpacing: 24,
        actions: [
          SearchButton(
            onTap: () {},
          ),
          const SizedBox(width: 8),
          AlarmButton(
            onTap: () {},
          ),
          const SizedBox(width: 24),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _SlideImage(),
            _CategoryPopular(),
            _New(),
          ],
        ),
      ),
    );
  }
}

class _SlideImage extends StatelessWidget {
  const _SlideImage();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _CategoryPopular extends StatelessWidget {
  const _CategoryPopular();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _New extends StatelessWidget {
  const _New();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}





