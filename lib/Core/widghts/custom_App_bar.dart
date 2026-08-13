import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.isblakk});
  final bool isblakk;
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    bool isblack = isblakk;
    return 
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 16),
         child: AppBar(
          backgroundColor: isblack ? Color(0xff111111) : Colors.white,
          leadingWidth: 30,
          leading: SvgPicture.asset(
            "assets/svgs/Menu.svg",
            color: isblack ? Colors.white : Color(0xff111111),
          ),
          title: SvgPicture.asset(
            "assets/logo/logo-bg.svg",
            color: isblack ? Colors.white : Color(0xff111111),
          ),
          centerTitle: true,
          actions: [
            SvgPicture.asset(
              "assets/svgs/Search.svg",
              color: isblack ? Colors.white : Color(0xff111111),
            ),
            Gap(20),
            SvgPicture.asset(
              "assets/svgs/shopping bag.svg",
              color: isblack ? Colors.white : Color(0xff111111),
            ),
          ],
               ),
       );
    
  }
}
