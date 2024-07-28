import 'package:carousel_slider/carousel_slider.dart';
import 'package:delli/common_widgets/common_app_bar.dart';
import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
import 'package:delli/widgets/image_indicator.dart';
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
    int slideIndex = 0;

    return CarouselSlider(
      options: CarouselOptions(
        height: 227.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          slideIndex = index;
        },
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.amber),
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: CommonText(
                      text: "'22년'된 아파트, 그냥 '동네 업체'에 맡겼더니 마을 주민과 횡령을 시도하여 충격에",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textStyle: DelliTextStyles.header4_600,
                      color: DelliColor.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: ImageIndicator(
                      length: 5,
                      currentIndex: slideIndex,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
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
