import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    required this.isPressed,
  });
  final String image;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isPressed
                ? Colors.lightBlueAccent.withOpacity(0.7)
                : Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            color: isPressed ? Colors.white : null,
          ),
        ),

        Icon(
          Icons.arrow_forward_ios_rounded,
          color: isPressed ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
