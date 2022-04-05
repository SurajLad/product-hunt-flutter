import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/domain/entities/topic.dart';

abstract class ProductHuntRepository {
  Future<List<Post>> fetchLatestPostedProduct();

  Future<List<Topic>> fetchTopTopics();

  Future<List<Post>> fetchProductsForTopic();

  Future<Post> fetchProductsDetails({
    required String postId,
  });
}
