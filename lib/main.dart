import 'package:flutter/material.dart';
import 'package:responsive_app/view/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
