import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/qyt.dart';

class CustomCardQ extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  final String des;
  
  const CustomCardQ({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.des, 
  });

  @override
  State<CustomCardQ> createState() => _CustomCardQState();
}

class _CustomCardQState extends State<CustomCardQ> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.image, width: 120),
        Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            customText(
              text: widget.name.toUpperCase(),
              space: 5,
              color: Color(0xff111111),
            ),
            Gap(10),
            SizedBox(
              width: size.width * 0.6,
              child: customText(
                text: widget.des.toUpperCase(),
                space: 2,
                color: Color(0xff111111),
              ),
            ),
            Gap(30),
            Row(
              children: [
                Qyt(
                  onTap: () {
                    setState(() {
                      if (number > 1) {
                        number--;
                      }
                    });
                  },
                  image: "assets/svgs/min.svg",
                ),
                Gap(10),
                customText(
                  text: "$number",
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
                Gap(10),
                Qyt(
                  onTap: () {
                    setState(() {
                      number++;
                    });
                  },
                  image: "assets/svgs/plus.svg",
                ),
              ],
            ),
            Gap(20),
            customText(
              text: "\$ ${widget.price}",
              color: Colors.red.shade200,
              fontsize: 21,
            ),
          ],
        ),
      ],
    );
  }
}
