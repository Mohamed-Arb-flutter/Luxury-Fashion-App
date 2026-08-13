import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/text_style.dart';
import 'package:store_app/Feather/Home/data/model/cover_model.dart';

class CustomListViwe extends StatelessWidget {
  const CustomListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: CoverModel.cover.length,
                      itemBuilder: (context, index) {
                        final cover = CoverModel.cover[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                cover.image,
                                height: 350,
                                fit: BoxFit.cover,
                              ),
                              Gap(10),
                              customText(text: cover.name.toUpperCase()),
                            ],
                          ),
                        );
                      },
                    ),
                  );
  }
}