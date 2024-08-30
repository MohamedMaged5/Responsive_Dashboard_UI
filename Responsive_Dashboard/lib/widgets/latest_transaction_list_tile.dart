import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/user_info_listtile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListTile extends StatelessWidget {
  const LatestTransactionListTile({super.key});

  static const List<UserInfoModel> users = [
    UserInfoModel(
        img: AppImages.imagesAccount1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        img: AppImages.imagesAccount2,
        name: "Josua Nunito",
        email: "JoshNunito@gmail.com"),
    UserInfoModel(
      img: AppImages.imagesAccount1,
      name: 'John Doe',
      email: 'johndoe@gmail.com',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoListtile(user: users[index]));
        },
      ),
    );
  }
}
