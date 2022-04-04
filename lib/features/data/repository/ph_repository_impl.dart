import 'package:product_hunt_flutter/features/data/datasource/remote_api.dart';
import 'package:product_hunt_flutter/features/domain/entities/topic.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/domain/repository/ph_repository.dart';

class ProductHuntRepositoryImpl extends ProductHuntRepository {
  final ProductHuntApi productHuntApi;

  ProductHuntRepositoryImpl({
    required this.productHuntApi,
  });
  @override
  Future<List<Post>> fetchProductsForTopic() {
    return productHuntApi.fetchProductsForTopic();
  }

  @override
  Future<List<Post>> fetchLatestPostedProduct() {
    return productHuntApi.fetchTodaysPostedProduct();
  }

  @override
  Future<List<Topic>> fetchTopTopics() {
    return productHuntApi.fetchTopTopics();
  }
}
