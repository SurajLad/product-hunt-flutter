import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/core/contants/pages.dart';
import 'package:product_hunt_flutter/core/router.dart';
import 'package:product_hunt_flutter/features/presentation/home/controller/home_controller.dart';
import 'package:product_hunt_flutter/features/presentation/home/search_screen.dart';
import 'package:product_hunt_flutter/ui/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 2),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        onTap: () {
          AppRouter.pushNamed(context, AppRoutes.search);
        },
        decoration: const InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
