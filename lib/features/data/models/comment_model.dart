import 'package:product_hunt_flutter/features/data/models/maker_model.dart';
import 'package:product_hunt_flutter/features/domain/entities/comment.dart';

class CommentModel extends Comment {
  const CommentModel({
    final int? id,
    final String body = '',
    final String? createdAt,
    final String? parentCommentId,
    final int? userId,
    final int? subjectId,
    final int? childCommentsCount,
    final String? url,
    final int? postId,
    final String? subjectType,
    final bool sticky = false,
    final int? votes,
    final MakersModel? user,
    // List<ChildComments>? childComments,
    final bool maker = false,
    final bool hunter = false,
    final bool liveGuest = false,
  }) : super(
          body: body,
          childCommentsCount: childCommentsCount,
          createdAt: createdAt,
          hunter: hunter,
          id: id,
          liveGuest: liveGuest,
          maker: maker,
          parentCommentId: parentCommentId,
          postId: postId,
          sticky: sticky,
          subjectId: subjectId,
          subjectType: subjectType,
          url: url,
          user: user,
          userId: userId,
          votes: votes,
        );

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      body: json['body'] ?? '',
      createdAt: json['created_at'],
      parentCommentId: json['parent_comment_id']?.toString(),
      userId: json['user_id'],
      subjectId: json['subject_id'],
      childCommentsCount: json['child_comments_count'],
      url: json['url'],
      postId: json['post_id'],
      subjectType: json['subject_type'],
      sticky: json['sticky'],
      votes: json['votes'],
      user: json['user'] != null ? MakersModel.fromJson(json['user']) : null,
      maker: json['maker'],
      hunter: json['hunter'],
      liveGuest: json['live_guest'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['body'] = body;
    data['created_at'] = createdAt;
    data['parent_comment_id'] = parentCommentId;
    data['user_id'] = userId;
    data['subject_id'] = subjectId;
    data['child_comments_count'] = childCommentsCount;
    data['url'] = url;
    data['post_id'] = postId;
    data['subject_type'] = subjectType;
    data['sticky'] = sticky;
    data['votes'] = votes;

    // if (childComments != null) {
    //   data['child_comments'] =
    //       childComments!.map((v) => v.toJson()).toList();
    // }
    data['maker'] = maker;
    data['hunter'] = hunter;
    data['live_guest'] = liveGuest;
    return data;
  }
}
