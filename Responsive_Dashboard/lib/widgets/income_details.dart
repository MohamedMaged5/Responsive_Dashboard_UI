import 'package:dash_board/models/income_details_item_model.dart';
import 'package:dash_board/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsItemModel> itemslist = [
    IncomeDetailsItemModel(
      color: Color(0xff208CC8),
      title: "Design service",
      percentage: "40%",
    ),
    IncomeDetailsItemModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      percentage: "25%",
    ),
    IncomeDetailsItemModel(
      color: Color(0xff064061),
      title: "Product royalti",
      percentage: "20%",
    ),
    IncomeDetailsItemModel(
      color: Color(0xffE2DECD),
      title: "Other",
      percentage: "22%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemslist.map((e) => IncomeDetailsItem(item: e)).toList(),
    );
  }
}
