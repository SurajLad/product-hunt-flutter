import 'package:product_hunt_flutter/features/domain/entities/maker.dart';

class MakersModel extends Maker {
  const MakersModel({
    int? id,
    String? createdAt,
    String name = '',
    String? username,
    String? headline,
    String? twitterUsername,
    String? websiteUrl,
    String? profileUrl,
    String? imageUrl,
  }) : super(
          id: id,
          createdAt: createdAt,
          name: name,
          username: username,
          headline: headline,
          imageUrl: imageUrl,
          profileUrl: profileUrl,
          twitterUsername: twitterUsername,
          websiteUrl: websiteUrl,
        );

  factory MakersModel.fromJson(Map<String, dynamic> json) {
    return MakersModel(
      id: json['id'],
      createdAt: json['created_at'],
      name: json['name'] ?? '',
      username: json['username'],
      headline: json['headline'],
      twitterUsername: json['twitter_username'],
      websiteUrl: json['website_url'],
      profileUrl: json['profile_url'],
      imageUrl:
          json['image_url'] != null ? json['image_url']['original'] : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['name'] = name;
    data['username'] = username;
    data['headline'] = headline;
    data['twitter_username'] = twitterUsername;
    data['website_url'] = websiteUrl;
    data['profile_url'] = profileUrl;
    data['image_url'] = imageUrl;

    return data;
  }
}
