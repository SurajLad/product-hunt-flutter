import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/presentation/product_detail/product_details.dart';
import 'package:product_hunt_flutter/ui/colors.dart';
import 'package:product_hunt_flutter/ui/styles.dart';

class SearchScreen extends StatefulWidget {
  final List<Post> posts;

  const SearchScreen({Key? key, required this.posts}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final txtEditingController = TextEditingController();
  final searchKeyword = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBgColor,
      appBar: AppBar(
        elevation: 1,
        leading: InkWell(
          onTap: () {
            txtEditingController.clear();
            searchKeyword.value = '';
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.defaultBgColor,
        title: TextFormField(
          onChanged: (text) async {
            searchKeyword.value = text;
            setState(() {});
          },
          controller: txtEditingController,
          decoration: const InputDecoration(
            hintText: 'Search Products..',
            hintStyle: AppTextStyles.primaryBody,
            border: InputBorder.none,
          ),
        ),
        actions: [
          Obx(
            () {
              return Visibility(
                visible: searchKeyword.isNotEmpty,
                child: InkWell(
                  onTap: () {
                    txtEditingController.clear();
                    setState(() {
                      searchKeyword.value = '';
                    });
                  },
                  child: const Icon(Icons.close),
                ),
              );
            },
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            final post = widget.posts[index];

            if ((post.name.toLowerCase())
                .contains(searchKeyword.value.toLowerCase())) {
              return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.selectedChip,
                    ),
                  ),
                ),
                child: TextButton.icon(
                  icon: Image.network(
                    post.thumbnail?.imageUrl ?? '',
                    width: 60,
                    height: 60,
                  ),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    maximumSize: Size.fromWidth(Get.width),
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 16),
                  ),
                  onPressed: () {
                    Get.to(() => ProductDetailsPage(
                          postId: post.id.toString(),
                          postTitle: post.name,
                        ));
                  },
                  label: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '${post.name} ',
                      style: AppTextStyles.primaryBody,
                    ),
                  ),
                ),
              );
            } else if (searchKeyword.value.isEmpty) {
              return TextButton.icon(
                icon: Image.network(
                  post.thumbnail?.imageUrl ?? '',
                  width: 40,
                  height: 40,
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  maximumSize: Size.fromWidth(Get.width),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16,
                  ),
                ),
                onPressed: () {
                  Get.to(() => ProductDetailsPage(
                        postId: post.id.toString(),
                        postTitle: post.name,
                      ));
                },
                label: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '${post.name} ',
                    style: AppTextStyles.primaryBody,
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: widget.posts.length,
        ),
      ),
    );
  }
}
