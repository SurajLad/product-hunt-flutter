import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/features/presentation/home/home_controller.dart';
import 'package:product_hunt_flutter/features/presentation/home/widgets/search_screen.dart';
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
          Get.to(() => SearchScreen(
                posts: Get.find<HomeController>().latestPosts,
              ));
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
