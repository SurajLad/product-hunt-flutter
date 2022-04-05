import 'package:product_hunt_flutter/features/domain/entities/media.dart';

class MediaModel extends Media {
  const MediaModel({
    final int? id,
    final int? priority,
    final String? platform,
    final String? videoId,
    final int? originalWidth,
    final int? originalHeight,
    final String? imageUrl,
    final String? mediaType,
  }) : super(
          id: id,
          imageUrl: imageUrl,
          mediaType: mediaType,
          originalHeight: originalHeight,
          originalWidth: originalWidth,
          platform: platform,
          priority: priority,
          videoId: videoId,
        );

  factory MediaModel.fromJson(Map<String, dynamic> json) {
    return MediaModel(
      id: json['id'],
      priority: json['priority'],
      platform: json['platform'],
      videoId: json['video_id'],
      originalWidth: json['original_width'],
      originalHeight: json['original_height'],
      imageUrl: json['image_url'],
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['priority'] = priority;
    data['platform'] = platform;
    data['video_id'] = videoId;
    data['original_width'] = originalWidth;
    data['original_height'] = originalHeight;

    data['image_url'] = imageUrl;
    data['media_type'] = mediaType;
    return data;
  }
}
