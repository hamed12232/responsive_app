import 'package:flutter/material.dart';
import 'package:responsive_app/model/drawer_item_model.dart';
import 'package:responsive_app/widgets/active_and_in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
