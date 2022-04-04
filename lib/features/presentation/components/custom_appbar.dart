import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/features/presentation/product_detail/product_details.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.drag_handle,
          size: 35,
        ),
        InkWell(
          onTap: () {
            Get.to(() => const ProductDetailsPage());
          },
          child: Icon(
            Icons.person,
            size: 35,
          ),
        ),
      ],
    );
  }
}
