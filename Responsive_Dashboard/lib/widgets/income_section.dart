import 'package:dash_board/widgets/custom_back_container.dart';
import 'package:dash_board/widgets/income_chart.dart';
import 'package:dash_board/widgets/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 40,
          ),
          Flexible(fit: FlexFit.tight, child: IncomeChart())
        ],
      ),
    );
  }
}
