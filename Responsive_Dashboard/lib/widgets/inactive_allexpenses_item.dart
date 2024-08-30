import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel expensesItemModel;
  const InActiveAllExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              img: expensesItemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensesItemModel.title,
                style: AppTextStyles.textStyleSemiBold16(context),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(expensesItemModel.subtitle,
                  style: AppTextStyles.textStyleRegular14(context)),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(expensesItemModel.price,
                  style: AppTextStyles.textStyleSemiBold24(context)),
            ),
          ],
        ));
  }
}
