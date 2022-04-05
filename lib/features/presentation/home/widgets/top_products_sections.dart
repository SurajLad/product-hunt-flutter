import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/features/presentation/home/home_controller.dart';
import 'package:product_hunt_flutter/ui/colors.dart';
import 'package:product_hunt_flutter/ui/styles.dart';

class TopTopicPostSection extends StatelessWidget {
  TopTopicPostSection({Key? key}) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 160,
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      margin: const EdgeInsets.only(right: 12.0),
                      padding: const EdgeInsets.all(10),
                      child: Text('${controller.latestTopics[index].name}',
                          style: AppTextStyles.secondaryBody),
                    ),
                  );
                },
                itemCount: controller.latestTopics.take(5).length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 52),
            // Expanded(
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {
            //       return Text(
            //         '$index',
            //         style: AppTextStyles.primaryBody,
            //       );
            //     },
            //     itemCount: 5,
            //     scrollDirection: Axis.horizontal,
            //   ),
            // ),
            Container(
              alignment: Alignment.center,
              child: const Text('Products with Topic Selection go here..'),
            )
          ],
        ),
      );
    });
  }
}
