import 'package:product_hunt_flutter/features/data/models/media_model.dart';
import 'package:product_hunt_flutter/features/data/models/screenshot_url_model.dart';
import 'package:product_hunt_flutter/features/data/models/thumbnail_model.dart';
import 'package:product_hunt_flutter/features/data/models/topic_model.dart';
import 'package:product_hunt_flutter/features/domain/entities/post.dart';
import 'comment_model.dart';
import 'maker_model.dart';

class PostModel extends Post {
  const PostModel({
    final int? commentsCount,
    final int? id,
    final String name = '',
    final String? productState,
    final String? tagline,
    final String? slug,
    final int? votesCount,
    final String? day,
    final String? createdAt,
    final String? discussionUrl,
    final bool featured = false,
    final bool iosFeaturedAt = false,
    final bool? makerInside,
    final List<MakersModel> makers = const [],
    final String? redirectUrl,
    final ScreenshotUrlModel? screenshotUrl,
    final ThumbnailModel? thumbnail,
    final List<TopicModel> topics = const [],
    final MakersModel? user,
    final int? reviewsCount,
    final List<CommentModel> comments = const [],
    final String description = '',
    final List<MediaModel> media = const [],
  }) : super(
          commentsCount: commentsCount,
          id: id,
          name: name,
          productState: productState,
          createdAt: createdAt,
          day: day,
          discussionUrl: discussionUrl,
          featured: featured,
          iosFeaturedAt: iosFeaturedAt,
          makerInside: makerInside,
          makers: makers,
          topics: topics,
          redirectUrl: redirectUrl,
          screenshotUrl: screenshotUrl,
          slug: slug,
          tagline: tagline,
          thumbnail: thumbnail,
          user: user,
          votesCount: votesCount,
          reviewsCount: reviewsCount,
          comments: comments,
          media: media,
          description: description,
        );

  factory PostModel.fromJson(Map<String, dynamic> json) {
    final _makers = <MakersModel>[];
    final _topics = <TopicModel>[];
    final _comments = <CommentModel>[];
    final _medias = <MediaModel>[];

    if (json['makers'] != null) {
      json['makers'].forEach((v) {
        _makers.add(MakersModel.fromJson(v));
      });
    }
    if (json['topics'] != null) {
      json['topics'].forEach((v) {
        _topics.add(TopicModel.fromJson(v));
      });
    }
    if (json['comments'] != null) {
      json['comments'].forEach((v) {
        _comments.add(CommentModel.fromJson(v));
      });
    }
    if (json['media'] != null) {
      json['media'].forEach((v) {
        _medias.add(MediaModel.fromJson(v));
      });
    }
    return PostModel(
      commentsCount: json['comments_count'],
      id: json['id'],
      name: json['name'],
      productState: json['product_state'],
      tagline: json['tagline'],
      slug: json['slug'],
      votesCount: json['votes_count'],
      day: json['day'],
      createdAt: json['created_at'],
      discussionUrl: json['discussion_url'],
      featured: json['featured'] ?? false,
      iosFeaturedAt: json['ios_featured_at'] ?? false,
      makerInside: json['maker_inside'],
      makers: _makers,
      topics: _topics,
      comments: _comments,
      media: _medias,
      redirectUrl: json['redirect_url'],
      screenshotUrl: json['screenshot_url'] != null
          ? ScreenshotUrlModel.fromJson(json['screenshot_url'])
          : null,
      thumbnail: json['thumbnail'] != null
          ? ThumbnailModel.fromJson(json['thumbnail'])
          : null,
      user: json['user'] != null ? MakersModel.fromJson(json['user']) : null,
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['comments_count'] = commentsCount;
    data['id'] = id;
    data['name'] = name;
    data['product_state'] = productState;
    data['tagline'] = tagline;
    data['slug'] = slug;
    data['votes_count'] = votesCount;
    data['day'] = day;
    data['created_at'] = createdAt;
    data['discussion_url'] = discussionUrl;
    data['featured'] = featured;
    data['ios_featured_at'] = iosFeaturedAt;
    data['maker_inside'] = makerInside;
    data['makers'] = makers.map((v) => (v as MakersModel).toJson()).toList();
    data['redirect_url'] = redirectUrl;
    if (screenshotUrl != null) {
      data['screenshot_url'] = (screenshotUrl as ScreenshotUrlModel).toJson();
    }
    if (thumbnail != null) {
      data['thumbnail'] = (thumbnail as ThumbnailModel).toJson();
    }
    data['topics'] = topics.map((v) => (v as TopicModel).toJson()).toList();
    if (user != null) {
      data['user'] = (user as MakersModel).toJson();
    }
    return data;
  }
}
