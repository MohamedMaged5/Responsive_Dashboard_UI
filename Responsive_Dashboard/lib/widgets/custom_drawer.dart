import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_items_listview.dart';
import 'package:dash_board/widgets/inactive_draweritem.dart';
import 'package:dash_board/widgets/user_info_listtile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 24),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListtile(
                user: UserInfoModel(
                    img: AppImages.imagesMainaccount,
                    name: "Mohamed Maged",
                    email: "mmaged@gmail.com"),
              ),
            ),
            DrawerItemsListView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InactiveDrawerItem(
                      item: DrawerItemModel(
                          title: "Setting System",
                          image: AppImages.imagesSetting)),
                  InactiveDrawerItem(
                      item: DrawerItemModel(
                          title: "Logout", image: AppImages.imagesLogout)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
