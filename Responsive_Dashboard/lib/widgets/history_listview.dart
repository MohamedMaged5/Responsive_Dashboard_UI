import 'package:dash_board/models/history_model.dart';
import 'package:dash_board/widgets/history_item.dart';
import 'package:flutter/material.dart';

class HistoryListview extends StatelessWidget {
  const HistoryListview({super.key});
  static const List<HistoryModel> items = [
    HistoryModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022",
        amount: "\$20,129",
        isWithDrawal: true),
    HistoryModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000",
        isWithDrawal: false),
    HistoryModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$20,129",
        isWithDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => HistoryItem(item: e)).toList(),
    );
  }
}
