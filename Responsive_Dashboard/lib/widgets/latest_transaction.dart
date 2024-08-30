import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/latest_transaction_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppTextStyles.textStyleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListTile(),
      ],
    );
  }
}
