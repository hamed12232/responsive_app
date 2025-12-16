import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/utils/app_style.dart';

class AllExpensessHeader extends StatefulWidget {
  const AllExpensessHeader({super.key});

  @override
  State<AllExpensessHeader> createState() => _AllExpensessHeaderState();
}

class _AllExpensessHeaderState extends State<AllExpensessHeader> {
  String selectedValue = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton(
            underline: const SizedBox(),
            icon: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Image.asset(Assets.imagesDropDown),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            value: selectedValue,
            style: AppStyles.styleMedium16(context),
            items: [
              DropdownMenuItem(value: 'Monthly', child: Text('Monthly')),
              DropdownMenuItem(value: 'Yearly', child: Text('Yearly')),
              DropdownMenuItem(value: 'Weekly', child: Text('Weekly')),
            ],
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
