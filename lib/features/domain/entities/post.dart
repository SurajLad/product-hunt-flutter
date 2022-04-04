import 'package:equatable/equatable.dart';
import 'package:product_hunt_flutter/features/domain/entities/maker.dart';
import 'package:product_hunt_flutter/features/domain/entities/screenshot_url.dart';
import 'package:product_hunt_flutter/features/domain/entities/thumbnail.dart';
import 'package:product_hunt_flutter/features/domain/entities/topic.dart';

class Post extends Equatable {
  final int? commentsCount;
  final int? id;
  final String? name;
  final String? productState;
  final String? tagline;
  final String? slug;
  final int? votesCount;
  final String? day;
  final String? createdAt;
  final String? discussionUrl;
  final bool featured;
  final bool iosFeaturedAt;
  final bool? makerInside;
  final List<Maker> makers;
  final String? redirectUrl;
  final ScreenshotUrl? screenshotUrl;
  final Thumbnail? thumbnail;
  final List<Topic> topics;
  final Maker? user;

  const Post({
    this.commentsCount,
    this.id,
    this.name,
    this.productState,
    this.tagline,
    this.slug,
    this.votesCount,
    this.day,
    this.createdAt,
    this.discussionUrl,
    this.featured = false,
    this.iosFeaturedAt = false,
    this.makerInside,
    this.makers = const [],
    this.redirectUrl,
    this.screenshotUrl,
    this.thumbnail,
    this.topics = const [],
    this.user,
  });

  @override
  List<Object?> get props => [id];
}
