import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DelliColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: child,
        ),
      ),
    );
  }
}
