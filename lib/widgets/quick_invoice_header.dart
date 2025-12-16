import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add,color: Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}
