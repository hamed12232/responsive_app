import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_style.dart';
import 'package:responsive_app/widgets/custom_background_container.dart';
import 'package:responsive_app/widgets/latest_transactons.dart';
import 'package:responsive_app/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
          SizedBox(height: 12),
          LatestTransactonsListView(),
          
        ],
      ),
    );
  }
}
