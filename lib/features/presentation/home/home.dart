import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:product_hunt_flutter/features/domain/usecases/ph_usecase.dart';
import 'package:product_hunt_flutter/features/presentation/components/custom_appbar.dart';
import 'package:product_hunt_flutter/features/presentation/components/search_bar.dart';
import 'package:product_hunt_flutter/features/presentation/home/widgets/top_products_sections.dart';
import 'package:product_hunt_flutter/ui/colors.dart';
import 'package:product_hunt_flutter/ui/styles.dart';

import 'controller/home_controller.dart';
import 'widgets/latest_products_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Get.put<HomeController>(
      HomeController(
        usecase: Get.find<ProductHuntUsecase>(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 8),
              const CustomAppBar(),
              const SizedBox(height: 16),
              const Text(
                'Lets Hunting,',
                style: AppTextStyles.largeHeading,
              ),
              const Text(
                'Best place for hunting products.',
                style: AppTextStyles.secondaryBody,
              ),
              const SizedBox(height: 16),
              const SearchBar(),
              const SizedBox(height: 16),
              const Text(
                'Top Topics',
                style: AppTextStyles.primaryBodyBold,
              ),
              TopTopicProductSection(),
              const SizedBox(height: 16),
              const Text(
                'Todays Products',
                style: AppTextStyles.primaryBodyBold,
              ),
              const LatestProductSection(),
            ],
          ),
        ),
      ),
    );
  }
}
