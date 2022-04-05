import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/features/presentation/home/home_controller.dart';
import 'package:product_hunt_flutter/features/presentation/home/widgets/latest_posts_section.dart';
import 'package:product_hunt_flutter/ui/colors.dart';
import 'package:product_hunt_flutter/ui/styles.dart';

class ProductDetailsPage extends StatefulWidget {
  final String postId;
  final String postTitle;

  const ProductDetailsPage({
    Key? key,
    required this.postId,
    required this.postTitle,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final controller = Get.find<HomeController>();
  @override
  void initState() {
    controller.getProductDetails(postId: widget.postId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        title: Text(
          widget.postTitle,
          style: AppTextStyles.primaryBodyBold.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
      body: Obx(() {
        final prouductDetail = controller.productDetails.value;
        return prouductDetail.id != null
            ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          (prouductDetail.thumbnail?.imageUrl != null)
                              ? Flexible(
                                  flex: 1,
                                  child: Image.network(
                                    prouductDetail.thumbnail?.imageUrl ?? '',
                                    width: 240,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                )
                              : const SizedBox(),
                          const SizedBox(width: 12),
                          Flexible(
                              flex: 1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UpVoteWidget(
                                    upVoteCount:
                                        prouductDetail.votesCount.toString(),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'Hunter :',
                                    style: AppTextStyles.secondaryBodyBold,
                                  ),
                                  Text(
                                    prouductDetail.user?.name ?? '',
                                    style: AppTextStyles.secondaryBody,
                                  )
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'About',
                        style: AppTextStyles.largeHeading,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        prouductDetail.description,
                        style: AppTextStyles.secondaryBody,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Comments : ",
                        style: AppTextStyles.primaryBodyBold,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            final comment = prouductDetail.comments[index];
                            return Container(
                              decoration: const BoxDecoration(
                                color: AppColors.defaultBgColor,
                              ),
                              margin: const EdgeInsets.only(top: 16),
                              child: ListTile(
                                title: Text(
                                  'Author:\t\t\t' + (comment.user?.name ?? ''),
                                  style: AppTextStyles.secondaryBodyBold,
                                ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text(
                                    comment.body,
                                    style: AppTextStyles.secondaryBody,
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 2,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      }),
    );
  }
}
