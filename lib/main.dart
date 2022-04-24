import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/core/contants/pages.dart';
import 'package:product_hunt_flutter/features/presentation/home/home.dart';
import 'package:product_hunt_flutter/features/presentation/home/search_screen.dart';
import 'package:product_hunt_flutter/features/presentation/product_detail/product_details.dart';
import 'package:product_hunt_flutter/features/presentation/splash/splash_page.dart';

import 'features/presentation/home/controller/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _generateRoute,
      home: const SplashScreen(),
    );
  }

  Route<dynamic>? _generateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.home) {
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: settings,
      );
    }
    if (settings.name == AppRoutes.productDetail) {
      return MaterialPageRoute(
          builder: (context) => ProductDetailsPage(
                postId: (settings.arguments as ProductArguments).productId,
                postTitle:
                    (settings.arguments as ProductArguments).productTitle,
              ),
          settings: settings);
    }
    if (settings.name == AppRoutes.search) {
      return MaterialPageRoute(
        builder: (context) =>
            SearchScreen(posts: Get.find<HomeController>().latestPosts),
        settings: settings,
      );
    }
    return null;
  }
}
