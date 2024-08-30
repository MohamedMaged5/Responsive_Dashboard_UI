import 'package:flutter/material.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
        color: Color(0xffF1F1F1),
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
          size: 18,
        ),
      ),
    );
  }
}
