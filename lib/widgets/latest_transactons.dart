import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';

class LatestTransactonsListView extends StatelessWidget {
  const LatestTransactonsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: 'Lekan Okeowo',
              subtitle: 'lekano@example.com',
            ),
          );
        },
      ),
    );
  }
}
