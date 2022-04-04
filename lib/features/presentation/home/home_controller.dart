import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/domain/entities/topic.dart';
import 'package:product_hunt_flutter/features/domain/usecases/ph_usecase.dart';

class HomeController extends GetxController {
  late ProductHuntUsecase phUsecase;
  final latestPosts = <Post>[].obs;
  final latestTopics = <Topic>[].obs;

  HomeController({required ProductHuntUsecase usecase}) {
    phUsecase = usecase;
  }

  @override
  void onInit() async {
    latestPosts.value = await phUsecase.getLatestPostedProduct();
    latestTopics.value = await phUsecase.getTopTopics();

    super.onInit();
  }
}
