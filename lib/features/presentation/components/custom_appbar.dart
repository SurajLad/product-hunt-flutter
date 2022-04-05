import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.drag_handle,
          size: 35,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.person,
            size: 35,
          ),
        ),
      ],
    );
  }
}
