import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesListviewItems extends StatefulWidget {
  const AllExpensesListviewItems({super.key});

  @override
  State<AllExpensesListviewItems> createState() =>
      _AllExpensesListviewItemsState();
}

class _AllExpensesListviewItemsState extends State<AllExpensesListviewItems> {
  final List<AllExpensesItemModel> itemsList = const [
    AllExpensesItemModel(
        image: AppImages.imagesBalance,
        title: "Balance",
        subtitle: "April 2022",
        price: "\$20,129"),
    AllExpensesItemModel(
        image: AppImages.imagesIncome,
        title: "Income",
        subtitle: "April 2022",
        price: "\$20,129"),
    AllExpensesItemModel(
        image: AppImages.imagesExpanses,
        title: "Expanses",
        subtitle: "April 2022",
        price: "\$20,129")
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (selectedIndex != 0) {
              setState(() {
                selectedIndex = 0;
              });
            }
          },
          child: AllExpensesItem(
              expensesItemModel: itemsList[0], isSelected: selectedIndex == 0),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (selectedIndex != 1) {
              setState(() {
                selectedIndex = 1;
              });
            }
          },
          child: AllExpensesItem(
              expensesItemModel: itemsList[1], isSelected: selectedIndex == 1),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (selectedIndex != 2) {
              setState(() {
                selectedIndex = 2;
              });
            }
          },
          child: AllExpensesItem(
              expensesItemModel: itemsList[2], isSelected: selectedIndex == 2),
        ))
      ],
    );
  }
}
