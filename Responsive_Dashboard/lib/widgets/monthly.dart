import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Monthly extends StatelessWidget {
  const Monthly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xffF1F1F1), width: 1)),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppTextStyles.textStyleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
