import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/core/contants/pages.dart';
import 'package:product_hunt_flutter/core/router.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/presentation/product_detail/product_details.dart';
import 'package:product_hunt_flutter/ui/colors.dart';
import 'package:product_hunt_flutter/ui/styles.dart';

import '../controller/home_controller.dart';

class LatestProductSection extends StatefulWidget {
  const LatestProductSection({Key? key}) : super(key: key);

  @override
  State<LatestProductSection> createState() => _LatestProductSectionState();
}

class _LatestProductSectionState extends State<LatestProductSection> {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () {
          if (controller.latestPosts.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final post = controller.latestPosts[index];
              return _buildTile(post);
            },
            itemCount: controller.latestPosts.length,
            scrollDirection: Axis.horizontal,
          );
        },
      ),
    );
  }

  InkWell _buildTile(Post post) {
    return InkWell(
      onTap: () {
        AppRouter.pushNamed(
          context,
          AppRoutes.productDetail,
          arguments: ProductArguments(
            post.id.toString(),
            post.name,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.only(right: 12.0, top: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            (post.thumbnail?.imageUrl != null)
                ? Image.network(
                    post.thumbnail?.imageUrl ?? '',
                    width: 240,
                    fit: BoxFit.fill,
                  )
                : const SizedBox(),
            const SizedBox(height: 12),
            _NameWidget(
              name: post.name,
              topic: post.topics.first.name ?? '',
              upVoteCount: post.votesCount.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({
    Key? key,
    required this.name,
    required this.upVoteCount,
    required this.topic,
  }) : super(key: key);

  final String name;
  final String upVoteCount;
  final String topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.primaryBody,
              ),
              Text(
                topic,
                style: AppTextStyles.tertiaryBody,
              ),
            ],
          ),
          const SizedBox(width: 16),
          UpVoteWidget(upVoteCount: upVoteCount),
        ],
      ),
    );
  }
}

class UpVoteWidget extends StatelessWidget {
  const UpVoteWidget({
    Key? key,
    required this.upVoteCount,
  }) : super(key: key);

  final String upVoteCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey.withOpacity(.5),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.only(left: 8, right: 12, top: 4, bottom: 4),
      child: Row(
        children: [
          const Icon(
            Icons.keyboard_arrow_up_sharp,
            size: 30,
          ),
          Text(upVoteCount),
        ],
      ),
    );
  }
}
