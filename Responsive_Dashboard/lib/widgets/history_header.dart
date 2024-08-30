import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Transaction History",
          style: AppTextStyles.textStyleSemiBold20(context),
        ),
        const Spacer(),
        Text(
          "See all",
          style: AppTextStyles.textStyleMedium16(context).copyWith(
            color: const Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
