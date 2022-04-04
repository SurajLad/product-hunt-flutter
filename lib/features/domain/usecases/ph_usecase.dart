import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/domain/entities/topic.dart';

abstract class ProductHuntUsecase {
  Future<List<Post>> getLatestPostedProduct();

  Future<List<Topic>> getTopTopics();

  Future<List<Post>> getProductsForTopic();
}
