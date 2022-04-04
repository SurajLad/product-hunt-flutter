import 'package:product_hunt_flutter/features/domain/entities/thumbnail.dart';

class ThumbnailModel extends Thumbnail {
  const ThumbnailModel({
    String? id,
    String? mediaType,
    String? imageUrl,
  }) : super(
          id: id,
          mediaType: mediaType,
          imageUrl: imageUrl,
        );

  factory ThumbnailModel.fromJson(Map<String, dynamic> json) {
    return ThumbnailModel(
      id: json['id'],
      mediaType: json['media_type'],
      imageUrl: json['image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['media_type'] = mediaType;
    data['image_url'] = imageUrl;

    return data;
  }
}
