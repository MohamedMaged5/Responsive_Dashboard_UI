import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/widgets/active_allexpenses_item.dart';
import 'package:dash_board/widgets/inactive_allexpenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel expensesItemModel;
  final bool isSelected;
  const AllExpensesItem(
      {super.key, required this.expensesItemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? ActiveAllExpensesItem(expensesItemModel: expensesItemModel)
        : InActiveAllExpensesItem(expensesItemModel: expensesItemModel);
  }
}
