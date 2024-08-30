import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: 30,
          title: "Other",
          value: 22,
          color: const Color(0xffE2DECD),
        ),
        PieChartSectionData(
          radius: 30,
          title: "Product royalti",
          titleStyle:
              const TextStyle(color: Color.fromARGB(255, 190, 187, 176)),
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: 30,
          title: "Design product",
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: 30,
          title: "Design service",
          value: 40,
          color: const Color(0xff208CC8),
        ),
      ],
    );
  }
}
