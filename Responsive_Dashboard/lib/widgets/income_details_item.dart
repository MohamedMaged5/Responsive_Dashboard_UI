import 'package:dash_board/models/income_details_item_model.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  final IncomeDetailsItemModel item;
  const IncomeDetailsItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(shape: const OvalBorder(), color: item.color),
      ),
      title: Text(
        item.title,
        style: AppTextStyles.textStyleRegular16(context),
      ),
      trailing: Text(
        item.percentage,
        style: AppTextStyles.textStyleMedium16(context),
      ),
    );
  }
}
