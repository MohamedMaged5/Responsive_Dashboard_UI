import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? backColor;
  final Color? textColor;
  const CustomButton({super.key, this.backColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backColor ?? const Color(0xff4EB7F2),
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          "Send Money",
          style: AppTextStyles.textStyleSemiBold18(context)
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
