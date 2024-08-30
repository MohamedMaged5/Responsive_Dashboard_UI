import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListtile extends StatelessWidget {
  final UserInfoModel user;
  const UserInfoListtile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.img),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              user.name,
              style: AppTextStyles.textStyleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              user.email,
              style: AppTextStyles.textStyleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
