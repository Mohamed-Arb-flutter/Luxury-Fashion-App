import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';

class CusstomButtom extends StatelessWidget {
  final String text;
  final bool ch;
  final void Function()? onTap;
  const CusstomButtom({
    super.key,
    required this.text,
    required this.ch,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool issvg = ch;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 16),
        color: Color(0xff111111),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            issvg
                ? SvgPicture.asset("assets/svgs/shopping bag.svg", width: 22)
                : SizedBox.shrink(),
            Gap(10),
            customText(
              text: text.toUpperCase(),
              color: Colors.white,
              fontsize: 19,
            ),
          ],
        ),
      ),
    );
  }
}
