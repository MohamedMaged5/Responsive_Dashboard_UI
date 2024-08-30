import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/monthly.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppTextStyles.textStyleSemiBold20(context),
        ),
        const Monthly(),
      ],
    );
  }
}
