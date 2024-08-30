import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage(AppImages.imagesCardbackground),
              fit: BoxFit.fill),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Name card",
                  style: AppTextStyles.textStyleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Mohamed Maged",
                  style: AppTextStyles.textStyleMedium20(context),
                ),
                trailing: SvgPicture.asset(AppImages.imagesGallery),
              ),
              const Spacer(),
              Text(
                "0918 8124 0042 8129",
                style: AppTextStyles.textStyleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text("12/20 - 124",
                  style: AppTextStyles.textStyleRegular16(context).copyWith(
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
