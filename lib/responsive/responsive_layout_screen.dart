import 'package:flutter/material.dart';
import 'package:untitled6/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  ResponsiveLayout(
      {required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        //webscreen
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
