import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel expensesItemModel;

  const ActiveAllExpensesItem({super.key, required this.expensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xff4EB7F2), width: 1),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              backIconColor: Colors.white.withOpacity(0.15),
              img: expensesItemModel.image,
              iconColor: Colors.white,
              arrowColor: Colors.white,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensesItemModel.title,
                style: AppTextStyles.textStyleSemiBold16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensesItemModel.subtitle,
                style: AppTextStyles.textStyleRegular14(context).copyWith(
                  color: const Color(0xffFAFAFA),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                expensesItemModel.price,
                style: AppTextStyles.textStyleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
