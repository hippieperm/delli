import 'package:delli/styles/delli_color.dart';
import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({
    required this.child,
    this.appBar,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DelliColor.white,
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
