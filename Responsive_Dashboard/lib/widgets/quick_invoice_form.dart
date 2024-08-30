import 'package:dash_board/widgets/custom_button.dart';
import 'package:dash_board/widgets/titled_textfield.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitledTextfield(
                    title: "Customer name", hint: "Type customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitledTextfield(
                  title: "Customer Email", hint: "Type customer email"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitledTextfield(
                    title: "Item name", hint: "Type customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitledTextfield(title: "Item mount", hint: "USD")),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backColor: Colors.transparent,
              textColor: Color(0xff4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton())
          ],
        )
      ],
    );
  }
}
