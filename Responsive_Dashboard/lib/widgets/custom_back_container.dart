import 'package:flutter/material.dart';

class CustomBackContainer extends StatelessWidget {
  final Widget child;
  const CustomBackContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: child,
    );
  }
}
