import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt_flutter/core/urls.dart';
import 'package:product_hunt_flutter/features/data/models/post_model.dart';
import 'package:product_hunt_flutter/features/data/models/topic_model.dart';

abstract class ProductHuntApi {
  Future<List<PostModel>> fetchTodaysPostedProduct();

  Future<List<TopicModel>> fetchTopTopics();

  Future<List<PostModel>> fetchProductsForTopic();
}

class ProductHuntRemoteApi extends ProductHuntApi {
  final Dio apiClient;

  ProductHuntRemoteApi({
    required this.apiClient,
  });

  @override
  Future<List<PostModel>> fetchProductsForTopic() async {
    List<PostModel> _posts = [];

    final response = await apiClient.get(
      Urls.posts,
    );
    debugPrint(response.statusCode.toString());
    debugPrint(response.data);
    _posts = (response.data['posts'] as List)
        .map((e) => PostModel.fromJson(e))
        .toList();

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

    _posts = (response.data['posts'] as List)
        .map((e) => PostModel.fromJson(e))
        .toList();

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

    _topics = (response.data['topics'] as List)
        .map((e) => TopicModel.fromJson(e))
        .toList();

    return _topics;
  }
}
