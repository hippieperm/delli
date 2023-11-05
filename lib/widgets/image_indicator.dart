import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';

class ImageIndicator extends StatelessWidget {
  const ImageIndicator({
    required this.length,
    required this.currentIndex,
    super.key,
  });

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) {
          return Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: index == currentIndex
                  ? DelliColor.white
                  : const Color(0xff827C74),
            ),
          );
        },
      ),
    );
  }
}
