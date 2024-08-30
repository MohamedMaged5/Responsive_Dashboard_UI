import 'package:dash_board/widgets/allexpenses_and_quickinvoice.dart';
import 'package:dash_board/widgets/income_section.dart';
import 'package:dash_board/widgets/mycard_and_history_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          MycardAndHistorySection(),
          SizedBox(
            height: 24,
          ),
          IntrinsicHeight(child: IncomeSection())
        ],
      ),
    );
  }
}
