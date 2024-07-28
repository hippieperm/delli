import 'package:delli/common_widgets/common_app_bar.dart';
import 'package:delli/common_widgets/common_layout.dart';
import 'package:delli/common_widgets/common_svg.dart';
import 'package:delli/common_widgets/common_text.dart';
import 'package:delli/styles/delli_color.dart';
import 'package:delli/styles/delli_text_styles.dart';
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
      child: const SingleChildScrollView(
        child: Column(
          children: [
            _SlideImage(),
            SizedBox(height: 32),
            _CategoryPopular(),
            SizedBox(height: 32),
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
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: '💬 카테고리별 인기글',
                textStyle: DelliTextStyles.header3,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  CommonText(
                    text: '나의 관심 카테고리 인기글',
                    textStyle: DelliTextStyles.body1,
                    color: DelliColor.cgrayDk,
                  ),
                  Spacer(),
                  CommonSvg(
                    width: 7,
                    height: 7,
                    assets: 'assets/icon/plus_icon.svg',
                    color: DelliColor.main,
                  ),
                  SizedBox(width: 4),
                  CommonText(
                    text: '카테고리 설정',
                    textStyle: DelliTextStyles.body3,
                    color: DelliColor.main,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        //TODO 위젯분리시 리팩토링
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 24),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 60,
                height: 34,
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                alignment: Alignment.center,
                child: const CommonText(
                  text: '게임',
                  textStyle: DelliTextStyles.body1_600,
                  color: DelliColor.white,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: DelliColor.grayF4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: CommonText(
                                      text: '게임',
                                      textStyle: DelliTextStyles.body4_500,
                                      color: DelliColor.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const CommonText(
                                text: '11분전',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const CommonText(
                            text: '글 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록 합니다',
                            textStyle: DelliTextStyles.header4,
                            color: DelliColor.black,
                          ),
                          const SizedBox(height: 4),
                          const CommonText(
                            text:
                                '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                            textStyle: DelliTextStyles.body1,
                            color: DelliColor.gray6c,
                          ),
                          const SizedBox(height: 12),
                          const Row(
                            children: [
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/viewed_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '1M',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/liked_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '3.1K',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/comment_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '400',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(left: 16),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: DelliColor.grayF4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: CommonText(
                                      text: '게임',
                                      textStyle: DelliTextStyles.body4_500,
                                      color: DelliColor.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const CommonText(
                                text: '11분전',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const CommonText(
                            text: '글 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록 합니다',
                            textStyle: DelliTextStyles.header4,
                            color: DelliColor.black,
                          ),
                          const SizedBox(height: 4),
                          const CommonText(
                            text:
                                '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                            textStyle: DelliTextStyles.body1,
                            color: DelliColor.gray6c,
                          ),
                          const SizedBox(height: 12),
                          const Row(
                            children: [
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/viewed_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '1M',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/liked_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '3.1K',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/comment_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '400',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(left: 16),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: DelliColor.grayF4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: CommonText(
                                      text: '게임',
                                      textStyle: DelliTextStyles.body4_500,
                                      color: DelliColor.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const CommonText(
                                text: '11분전',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const CommonText(
                            text: '글 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록 합니다',
                            textStyle: DelliTextStyles.header4,
                            color: DelliColor.black,
                          ),
                          const SizedBox(height: 4),
                          const CommonText(
                            text:
                                '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                            textStyle: DelliTextStyles.body1,
                            color: DelliColor.gray6c,
                          ),
                          const SizedBox(height: 12),
                          const Row(
                            children: [
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/viewed_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '1M',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/liked_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '3.1K',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/comment_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '400',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(left: 16),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _New extends StatelessWidget {
  const _New();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              CommonText(
                text: '🔥 따끈따끈 최신글',
                textStyle: DelliTextStyles.header3,
              ),
              Spacer(),
              CommonSvg(
                width: 24,
                height: 24,
                assets: 'assets/icon/right_arrow_icon.svg',
                color: DelliColor.cgrayLt,
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: DelliColor.grayF4))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: CommonText(
                                      text: '자동차',
                                      textStyle: DelliTextStyles.body4_500,
                                      color: DelliColor.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const CommonText(
                                text: '11분전',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const CommonText(
                            text: '글 제목 입니다.',
                            textStyle: DelliTextStyles.header4,
                            color: DelliColor.black,
                          ),
                          const SizedBox(height: 4),
                          const CommonText(
                            text:
                                '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                            textStyle: DelliTextStyles.body1,
                            color: DelliColor.gray6c,
                          ),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/viewed_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '1M',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/liked_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '3.1K',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 26),
                              CommonSvg(
                                width: 13,
                                height: 13,
                                assets: 'assets/icon/comment_icon.svg',
                                color: DelliColor.cgrayLt,
                              ),
                              SizedBox(width: 4),
                              CommonText(
                                text: '400',
                                textStyle: DelliTextStyles.body4_500,
                                color: DelliColor.cgrayLt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(left: 16),
                      child: Container(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: DelliColor.grayF4))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: CommonText(
                                  text: '자동차',
                                  textStyle: DelliTextStyles.body4_500,
                                  color: DelliColor.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const CommonText(
                            text: '11분전',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const CommonText(
                        text: '글 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록 합니다',
                        textStyle: DelliTextStyles.header4,
                        color: DelliColor.black,
                      ),
                      const SizedBox(height: 4),
                      const CommonText(
                        text: '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                        textStyle: DelliTextStyles.body1,
                        color: DelliColor.gray6c,
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/viewed_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '1M',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 26),
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/liked_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '3.1K',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 26),
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/comment_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '400',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.only(left: 16),
                  child: Container(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 18, bottom: 13),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: DelliColor.grayF4))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: CommonText(
                                  text: '자동차',
                                  textStyle: DelliTextStyles.body4_500,
                                  color: DelliColor.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const CommonText(
                            text: '11분전',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const CommonText(
                        text:
                            '사진이 없고 글만 있는 형태의 게시글, 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록..',
                        textStyle: DelliTextStyles.header4,
                        color: DelliColor.black,
                      ),
                      const SizedBox(height: 4),
                      const CommonText(
                        text: '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                        textStyle: DelliTextStyles.body1,
                        color: DelliColor.gray6c,
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/viewed_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '1M',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 26),
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/liked_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '3.1K',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 26),
                          CommonSvg(
                            width: 13,
                            height: 13,
                            assets: 'assets/icon/comment_icon.svg',
                            color: DelliColor.cgrayLt,
                          ),
                          SizedBox(width: 4),
                          CommonText(
                            text: '300',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
