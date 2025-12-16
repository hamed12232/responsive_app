import 'package:flutter/material.dart';

class Breakpoints {
  static const double mobile = 800;
  static const double tablet = 1200;
}


class AdaptiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget? tabletLayout;
  final Widget? desktopLayout;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    this.tabletLayout,
    this.desktopLayout,
  });


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.mobile) {
          return mobileLayout;
        } else if (constraints.maxWidth < Breakpoints.tablet) {
          return tabletLayout ?? mobileLayout;
        } else {
          return desktopLayout ?? tabletLayout ?? mobileLayout;
        }
      },
    );
  }
}
