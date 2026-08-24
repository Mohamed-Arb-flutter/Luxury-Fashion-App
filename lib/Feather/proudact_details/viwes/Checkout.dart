import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/Heder.dart';
import 'package:store_app/Core/utils/text_style.dart';

import 'package:store_app/Core/widghts/custom_App_bar.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/cusstom_buttom.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/custom_card_q.dart';

class Checkout extends StatefulWidget {
  const Checkout({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.des,
  });
  final String name;
  final String image;
  final String price;
  final String des;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblakk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Heder(title: "Checkout"),
            CustomCardQ(
              name: widget.name,
              image: widget.image,
              price: widget.price,
              des: widget.des,
            ),
            Gap(10),
            Divider(),
            Gap(20),
            Row(
              children: [
                SvgPicture.asset("assets/svgs/promo.svg", width: 28),
                Gap(20),
                Text(
                  "ADD Promo Code",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0XFF111111),
                  ),
                ),
              ],
            ),
            Gap(10),
            Divider(),
            Gap(20),
            Row(
              children: [
                SvgPicture.asset("assets/svgs/delivery.svg", width: 25),
                Gap(20),
                Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0XFF111111),
                  ),
                ),
                Spacer(),
                Text(
                  "FREE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF111111),
                  ),
                ),
                Gap(30),
              ],
            ),
            Gap(10),
            Divider(),
            Gap(10),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(
                  text: "Est. Total",
                  color: Color(0xff111111),
                  fontsize: 20,
                ),
                customText(
                  text: "\$ ${widget.price}",
                  color: Colors.red.shade200,
                  fontsize: 21,
                ),
              ],
            ),
            Gap(20),
            CusstomButtom(ch: true, text: "Checkout", onTap: () {}),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
