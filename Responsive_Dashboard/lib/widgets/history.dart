import 'package:dash_board/widgets/history_header.dart';
import 'package:dash_board/widgets/history_listview.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HistoryHeader(),
        SizedBox(
          height: 20,
        ),
        HistoryListview()
      ],
    );
  }
}
