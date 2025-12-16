import 'package:flutter/material.dart';
import 'package:responsive_app/model/drawer_item_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/active_and_in_active_drawer_item.dart';
import 'package:responsive_app/widgets/drawer_item_list_view.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'lekano@example.com',
          ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerItemListView(),
          
          SliverFillRemaining(
            hasScrollBody: false,// to fix overflow error in bottom of list
            child: Column(
              children: [
                Spacer(),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Settings system', image: Assets.imagesSettings)),
                SizedBox(height: 20),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
