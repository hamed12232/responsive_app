import 'package:flutter/material.dart';
import 'package:responsive_app/model/all_expensess_item_model.dart';
import 'package:responsive_app/utils/app_style.dart';
import 'package:responsive_app/widgets/all_expensess_item_hearder.dart';

class AllexpensessItem extends StatelessWidget {
  const AllexpensessItem({super.key, required this.allExpensessItemModel,
    required this.isPressed,
  });
  final AllExpensessItemModel allExpensessItemModel;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isPressed ? Color(0xff4EB7F2) : Colors.white,
        border: Border.all(color: Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
            isPressed: isPressed,
          ),
          SizedBox(height: 34),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: isPressed ? Colors.white : null),
          ),
          SizedBox(height: 8),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: isPressed ? Color(0xffFAFAFA) : null),
          ),
          SizedBox(height: 16),
          Text(
            allExpensessItemModel.amount,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: isPressed ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}
