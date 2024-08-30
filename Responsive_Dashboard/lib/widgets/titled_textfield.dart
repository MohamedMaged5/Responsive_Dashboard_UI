import 'package:dash_board/utils/app_text_styles.dart';
import 'package:dash_board/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class TitledTextfield extends StatelessWidget {
  final String title;
  final String hint;
  const TitledTextfield({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.textStyleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextfield(hint: hint),
      ],
    );
  }
}
