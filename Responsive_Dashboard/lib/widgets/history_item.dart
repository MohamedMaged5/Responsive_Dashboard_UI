import 'package:dash_board/models/history_model.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.item});
  final HistoryModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          item.title,
          style: AppTextStyles.textStyleSemiBold16(context),
        ),
        subtitle: Text(
          item.date,
          style: AppTextStyles.textStyleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          item.amount,
          style: AppTextStyles.textStyleSemiBold20(context).copyWith(
            color: item.isWithDrawal
                ? const Color(0xffF44336)
                : const Color(0xff4CAF50),
          ),
        ),
      ),
    );
  }
}
