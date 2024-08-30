import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> itemlist = const [
    DrawerItemModel(title: "Dashboard", image: AppImages.imagesDashboard),
    DrawerItemModel(
        title: "My Transacation", image: AppImages.imagesMytransactions),
    DrawerItemModel(title: "Statistics", image: AppImages.imagesStatistics),
    DrawerItemModel(title: "Wallet", image: AppImages.imagesWallet),
    DrawerItemModel(title: "My Investments", image: AppImages.imagesInvestment),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemlist.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              item: itemlist[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
