import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/add_icon.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppTextStyles.textStyleSemiBold20(context),
        ),
        const AddIcon(),
      ],
    );
  }
}
