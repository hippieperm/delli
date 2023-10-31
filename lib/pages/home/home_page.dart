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
      child: SingleChildScrollView(
        child: Column(
          children: [
            _SlideImage(),
            SizedBox(height: 32),
            _CategoryPopularTitle(),
            _CategoryPopular(),
            _CategoryPopular(),
            _CategoryPopular(),
            SizedBox(height: 32),
            _CategorynewTitle(),
            _New(),
            _New(),
            _New(),
            //_New(),
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

class _CategoryPopularTitle extends StatelessWidget {
  const _CategoryPopularTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                    assets: 'assets/icon/categore_plus_icon.svg',
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
              SizedBox(height: 16),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 24),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.main,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '게임',
                    textStyle: DelliTextStyles.body1_600,
                    color: DelliColor.white,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.grayF4,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '커리어',
                    textStyle: DelliTextStyles.body1_500,
                    color: DelliColor.navy,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.grayF4,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '주식투자',
                    textStyle: DelliTextStyles.body1_500,
                    color: DelliColor.navy,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.grayF4,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '영화',
                    textStyle: DelliTextStyles.body1_500,
                    color: DelliColor.navy,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.grayF4,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '자동차',
                    textStyle: DelliTextStyles.body1_500,
                    color: DelliColor.navy,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                decoration: BoxDecoration(
                    color: DelliColor.grayF4,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: CommonText(
                    text: '게임',
                    textStyle: DelliTextStyles.body1_500,
                    color: DelliColor.navy,
                  ),
                ),
              ),
              SizedBox(width: 8),
            ],
          ),
        )
      ],
    );
  }
}

class _CategoryPopular extends StatelessWidget {
  const _CategoryPopular();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 18, bottom: 13),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: DelliColor.cgrayLt),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
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
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: CommonText(
                                  text: '게임',
                                  textStyle: DelliTextStyles.body4_500,
                                  color: DelliColor.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          CommonText(
                            text: '11분전',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      CommonText(
                        text: '글 제목이 2줄 이상 넘어갈 경우에는 이렇게 보여주도록 합니다',
                        textStyle: DelliTextStyles.header4,
                        color: DelliColor.black,
                      ),
                      SizedBox(height: 4),
                      CommonText(
                        text: '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                        textStyle: DelliTextStyles.body1,
                        color: DelliColor.gray6c,
                      ),
                      SizedBox(height: 8),
                      Row(
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
                SizedBox(width: 16),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Container(color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CategorynewTitle extends StatelessWidget {
  const _CategorynewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class _New extends StatelessWidget {
  const _New();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 18, bottom: 13),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: DelliColor.cgrayLt),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
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
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: CommonText(
                                  text: '자동차',
                                  textStyle: DelliTextStyles.body4_500,
                                  color: DelliColor.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          CommonText(
                            text: '11분전',
                            textStyle: DelliTextStyles.body4_500,
                            color: DelliColor.cgrayLt,
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      CommonText(
                        text: '글 제목 입니다.',
                        textStyle: DelliTextStyles.header4,
                        color: DelliColor.black,
                      ),
                      SizedBox(height: 4),
                      CommonText(
                        text: '해당 글의 본문 내용 2줄까지 보여주기  해당 글의 본문 내용해당 글의 본문..',
                        textStyle: DelliTextStyles.body1,
                        color: DelliColor.gray6c,
                      ),
                      SizedBox(height: 8),
                      Row(
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
                SizedBox(width: 16),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Container(color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
