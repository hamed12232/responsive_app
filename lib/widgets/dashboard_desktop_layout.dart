import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expensess.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/my_cards_and_transactions.dart';
import 'package:responsive_app/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: const SingleChildScrollView(
            child: Column(
              children: [AllExpensess(), SizedBox(height: 24), QuickInvoice()],
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(child: MyCardsAndTransactions()),
        SizedBox(width: 32),
      ],
    );
  }
}
