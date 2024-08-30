import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String img;
  final Color? backIconColor;
  final Color? iconColor;
  final Color? arrowColor;
  const AllExpensesItemHeader(
      {super.key,
      required this.img,
      this.backIconColor,
      this.iconColor,
      this.arrowColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 45,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: backIconColor ?? const Color(0xffF1F1F1)),
                child: Center(
                  child: SvgPicture.asset(
                    img,
                    colorFilter: ColorFilter.mode(
                        iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: arrowColor ?? const Color(0xff064061),
        ),
      ],
    );
  }
}
