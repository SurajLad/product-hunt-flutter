import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/core/injection.dart';
import 'package:product_hunt_flutter/features/presentation/home/home.dart';
import 'package:product_hunt_flutter/ui/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.defaultBgColor,
      body: Center(
        child: Text(
          'Product Hunt - Flutter Demo',
        ),
      ),
    );
  }

  @override
  void initState() {
    initModule();

    Timer(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeScreen(),
      );
    });
    super.initState();
  }
}
