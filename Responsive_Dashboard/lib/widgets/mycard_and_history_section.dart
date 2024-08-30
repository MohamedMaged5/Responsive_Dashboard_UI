import 'package:dash_board/widgets/custom_back_container.dart';
import 'package:dash_board/widgets/history.dart';
import 'package:dash_board/widgets/mycard_section.dart';
import 'package:flutter/material.dart';

class MycardAndHistorySection extends StatelessWidget {
  const MycardAndHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackContainer(
        child: Column(
      children: [
        MycardSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 40,
        ),
        History()
      ],
    ));
  }
}
