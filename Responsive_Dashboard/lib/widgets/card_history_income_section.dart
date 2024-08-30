import 'package:dash_board/widgets/income_section.dart';
import 'package:dash_board/widgets/mycard_and_history_section.dart';
import 'package:flutter/material.dart';

class CardHistoryIncomeSection extends StatelessWidget {
  const CardHistoryIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MycardAndHistorySection(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
