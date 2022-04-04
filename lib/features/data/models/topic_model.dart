import 'package:product_hunt_flutter/features/domain/entities/topic.dart';

class TopicModel extends Topic {
  const TopicModel({
    final int? id,
    final String? name,
    final String? slug,
    final DateTime? createdAt,
    final String description = '',
    final int followersCount = 0,
    final int postsCount = 0,
    final DateTime? updatedAt,
    final String image = '',
    final bool trending = false,
  }) : super(
          id: id,
          name: name,
          slug: slug,
          createdAt: createdAt,
          description: description,
          followersCount: followersCount,
          postsCount: postsCount,
          updatedAt: updatedAt,
          image: image,
          trending: trending,
        );

  factory TopicModel.fromJson(Map<String, dynamic> json) {
    return TopicModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      createdAt: json["created_at"] != null
          ? DateTime.parse(json["created_at"])
          : null,
      description: json["description"] ?? '',
      followersCount: json["followers_count"] ?? 0,
      postsCount: json["posts_count"] ?? 0,
      updatedAt: json["updated_at"] != null
          ? DateTime.parse(json["updated_at"])
          : null,
      image: json["image"] ?? '',
      trending: json["trending"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "created_at": createdAt?.toIso8601String() ?? '',
        "description": description,
        "followers_count": followersCount,
        "posts_count": postsCount,
        "updated_at": updatedAt?.toIso8601String() ?? '',
        "image": image,
        "trending": trending,
      };
}
