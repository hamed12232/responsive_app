import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expensess_header.dart';
import 'package:responsive_app/widgets/allexpensess_item.dart';
import 'package:responsive_app/widgets/custom_background_container.dart';
import 'package:responsive_app/widgets/items.dart';

class AllExpensess extends StatefulWidget {
  const AllExpensess({super.key});

  @override
  State<AllExpensess> createState() => _AllExpensessState();
}

class _AllExpensessState extends State<AllExpensess> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const AllExpensessHeader(),
          SizedBox(height: 16),
          Row(
            children: items.asMap().entries.map((e) {
              int index = e.key;
              var value = e.value;
              return index == 1
                  ? Expanded(
                      child: GestureDetector(
                        onTap: () {
                          onUpdate(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          child: AllexpensessItem(allExpensessItemModel: value,
                              isPressed: selectedIndex == index),
                        ),
                      ),
                    )
                  : Expanded(
                      child: GestureDetector(
                        onTap: () {
                          onUpdate(index);
                        },
                        child: AllexpensessItem(allExpensessItemModel: value,
                            isPressed: selectedIndex == index),
                      ),
                    );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void onUpdate(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
