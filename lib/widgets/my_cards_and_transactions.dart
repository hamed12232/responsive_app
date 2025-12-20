import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_background_container.dart';
import 'package:responsive_app/widgets/my_cards_section.dart';
import 'package:responsive_app/widgets/transaction_history.dart';

class MyCardsAndTransactions extends StatelessWidget {
  const MyCardsAndTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const MyCardsSection(),
          const Divider(height: 40, color: Color(0xffF1F1F1)),
          const TrasnctionHistory(),
        ],
      ),
    );
  }
}
