import 'package:dash_board/widgets/allexpenses_and_quickinvoice.dart';
import 'package:dash_board/widgets/card_history_income_section.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 1,
                      child: CardHistoryIncomeSection(),
                    ),
                    SizedBox(
                      width: 24,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
