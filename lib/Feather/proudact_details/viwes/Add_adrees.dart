import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/Core/utils/Heder.dart';
import 'package:store_app/Core/widghts/custom_App_bar.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/cusstom_buttom.dart';
import 'package:store_app/Feather/proudact_details/viwes/wights/custtom_textf_iled.dart';

class AddAdrees extends StatefulWidget {
  final dynamic editData;
  const AddAdrees({super.key, this.editData});

  @override
  State<AddAdrees> createState() => _AddAdreesState();
}

class _AddAdreesState extends State<AddAdrees> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();
  final formkey= GlobalKey<FormState>();
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

 @override
void initState() {
  super.initState(); 
  if (widget.editData != null) {
    firstNameController.text = widget.editData['first'] ?? "";
    lastNameController.text = widget.editData['last'] ?? "";
    addressController.text = widget.editData['address'] ?? "";
    cityController.text = widget.editData['city'] ?? "";
    stateController.text = widget.editData['state'] ?? "";
    zipCodeController.text = widget.editData['zip'] ?? "";
    phoneController.text = widget.editData['phone'] ?? "";
  }
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblakk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  Heder(title: "Add shipping address"),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          
                          label: 'First name',
                          controller: firstNameController,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomTextField(
                          label: 'Last name',
                          controller: lastNameController,
                        ),
                      ),
                    ],
                  ),
                  Gap(30),
                  CustomTextField(
                    label: 'Address',
                    controller: addressController,
                  ),
                  Gap(30),
                  CustomTextField(label: 'City', controller: cityController),
                  Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          label: 'State',
                          controller: stateController,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomTextField(
                          label: 'ZIP Code',
                          controller: zipCodeController,
                        ),
                      ),
                    ],
                  ),
                  Gap(30),
                  CustomTextField(
                    label: 'Phone Number',
                    controller: phoneController,
                  ),
                ],
              ),
            ),
            Spacer(),
            CusstomButtom(
              text: "place order",
              ch: true,
              onTap: () {
              if (formkey.currentState!.validate())
              {
                  final data = {
                  "first": firstNameController.text,
                  "last": lastNameController.text,
                  "address": addressController.text,
                  "city": cityController.text,
                  "state": stateController.text,
                  "zip": zipCodeController.text,
                  "phone": phoneController.text,
                };
                Navigator.pop(context,data);
              }
              else{return;}
              },
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
