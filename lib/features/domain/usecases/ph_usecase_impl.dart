import 'package:product_hunt_flutter/features/domain/entities/topic.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'package:product_hunt_flutter/features/domain/repository/ph_repository.dart';
import 'package:product_hunt_flutter/features/domain/usecases/ph_usecase.dart';

class ProductHuntUsecaseImpl extends ProductHuntUsecase {
  final ProductHuntRepository phRepository;

  ProductHuntUsecaseImpl({
    required this.phRepository,
  });
  @override
  Future<List<Post>> getProductsForTopic() {
    return phRepository.fetchProductsForTopic();
  }

  @override
  Future<List<Post>> getLatestPostedProduct() {
    return phRepository.fetchLatestPostedProduct();
  }

  @override
  Future<List<Topic>> getTopTopics() {
    return phRepository.fetchTopTopics();
  }

  @override
  Future<Post> getProductsDetails({required String postId}) {
    return phRepository.fetchProductsDetails(postId: postId);
  }
}
