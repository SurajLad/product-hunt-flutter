import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:product_hunt_flutter/core/secrets.dart';
import 'package:product_hunt_flutter/features/data/datasource/remote_api.dart';
import 'package:product_hunt_flutter/features/data/repository/ph_repository_impl.dart';
import 'package:product_hunt_flutter/features/domain/repository/ph_repository.dart';
import 'package:product_hunt_flutter/features/domain/usecases/ph_usecase.dart';
import 'package:product_hunt_flutter/features/domain/usecases/ph_usecase_impl.dart';

initModule() {
  // inject HTTP Client
  Get.lazyPut<Dio>(
    () => Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer ${Secrets.apiToken}",
        },
        validateStatus: (status) {
          return (status ?? 0) <= 500;
        },
      ),
    ),
  );

  // Inject API
  Get.lazyPut<ProductHuntApi>(
    () => ProductHuntRemoteApi(
      apiClient: Get.find<Dio>(),
    ),
  );
  // Inject Repository
  Get.lazyPut<ProductHuntRepository>(
    () => ProductHuntRepositoryImpl(
      productHuntApi: Get.find<ProductHuntApi>(),
    ),
  );
  // Inject Usecase
  Get.lazyPut<ProductHuntUsecase>(
    () => ProductHuntUsecaseImpl(
      phRepository: Get.find<ProductHuntRepository>(),
    ),
  );
}

disposeModule() {
  Get.delete<Dio>();
  Get.delete<ProductHuntApi>();
  Get.delete<ProductHuntRepository>();
  Get.delete<ProductHuntUsecase>();
}
