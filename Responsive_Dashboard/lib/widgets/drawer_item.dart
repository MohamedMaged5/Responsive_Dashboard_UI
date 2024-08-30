import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/widgets/active_draweritem.dart';
import 'package:dash_board/widgets/inactive_draweritem.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;
  final bool isSelected;
  const DrawerItem({super.key, required this.item, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(item: item)
        : InactiveDrawerItem(item: item);
  }
}
