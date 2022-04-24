import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt_flutter/core/contants/urls.dart';
import 'package:product_hunt_flutter/features/data/models/post_model.dart';
import 'package:product_hunt_flutter/features/data/models/topic_model.dart';

abstract class ProductHuntApi {
  Future<List<PostModel>> fetchTodaysPostedProduct();

  Future<List<TopicModel>> fetchTopTopics();

  Future<List<PostModel>> fetchProductsForTopic();

  Future<PostModel> fetchProductsDetails({
    required String postId,
  });
}

class ProductHuntRemoteApi extends ProductHuntApi {
  final Dio apiClient;

  ProductHuntRemoteApi({
    required this.apiClient,
  });

  @override
  Future<List<PostModel>> fetchProductsForTopic() async {
    List<PostModel> _posts = [];
    // TO DO :
    // IMPLEMENT LATER
    // final response = await apiClient.get(
    //   Urls.posts,
    // );
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.data);
    // _posts = (response.data['posts'] as List)
    //     .map((e) => PostModel.fromJson(e))
    //     .toList();

    return _posts;
  }

  @override
  Future<List<PostModel>> fetchTodaysPostedProduct() async {
    List<PostModel> _posts = [];

    final response = await apiClient.get(
      Urls.posts,
    );
    debugPrint(response.statusCode.toString());
    // debugPrint(response.data.toString());
    if (response.statusCode == 200) {
      _posts = (response.data['posts'] as List)
          .map((e) => PostModel.fromJson(e))
          .toList();
    }

    return _posts;
  }

  @override
  Future<List<TopicModel>> fetchTopTopics() async {
    List<TopicModel> _topics = [];

    final response = await apiClient.get(
      Urls.topic,
    );
    debugPrint(response.statusCode.toString());
    // debugPrint(response.data.toString());
    if (response.statusCode == 200) {
      _topics = (response.data['topics'] as List)
          .map((e) => TopicModel.fromJson(e))
          .toList();
    }
    return _topics;
  }

  @override
  Future<PostModel> fetchProductsDetails({required String postId}) async {
    late PostModel _postDetail;

    final response = await apiClient.get(
      Urls.posts + '/$postId',
    );
    debugPrint(response.statusCode.toString());
    // debugPrint(response.data.toString());
    if (response.statusCode == 200) {
      _postDetail = PostModel.fromJson(response.data['post']);
    }

    return _postDetail;
  }
}
