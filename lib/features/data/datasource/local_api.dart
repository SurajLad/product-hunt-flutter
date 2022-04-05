import 'package:product_hunt_flutter/features/data/datasource/remote_api.dart';
import 'package:product_hunt_flutter/features/data/models/post_model.dart';
import 'package:product_hunt_flutter/features/data/models/topic_model.dart';

class ProductHuntRemoteApi extends ProductHuntApi {
  @override
  Future<List<PostModel>> fetchProductsForTopic() {
    // TODO: implement fetchProductsForTopic
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> fetchTodaysPostedProduct() {
    // TODO: implement fetchTodaysPostedProduct
    throw UnimplementedError();
  }

  @override
  Future<List<TopicModel>> fetchTopTopics() {
    // TODO: implement fetchTopTopics
    throw UnimplementedError();
  }

  @override
  Future<PostModel> fetchProductsDetails({required String postId}) {
    // TODO: implement fetchProductsDetails
    throw UnimplementedError();
  }
}
