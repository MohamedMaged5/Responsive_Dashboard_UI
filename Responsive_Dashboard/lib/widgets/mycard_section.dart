import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/mycard.dart';
import 'package:flutter/material.dart';

class MycardSection extends StatelessWidget {
  const MycardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppTextStyles.textStyleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const Mycard()
      ],
    );
  }
}
