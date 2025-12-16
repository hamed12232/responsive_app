import 'package:flutter/material.dart';
import 'package:responsive_app/layout/adaptive_layout.dart';
import 'package:responsive_app/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: const SizedBox(),
        tabletLayout: const SizedBox(),
        desktopLayout: const DashboardDesktopLayout(),
      ),
    );
  }
}