import 'package:equatable/equatable.dart';

import 'maker.dart';

class Comment extends Equatable {
  final int? id;
  final String body;
  final String? createdAt;
  final String? parentCommentId;
  final int? userId;
  final int? subjectId;
  final int? childCommentsCount;
  final String? url;
  final int? postId;
  final String? subjectType;
  final bool sticky;
  final int? votes;
  final Maker? user;
  // List<ChildComments>? childComments;
  final bool maker;
  final bool hunter;
  final bool liveGuest;

  const Comment({
    this.id,
    this.body = '',
    this.createdAt,
    this.parentCommentId,
    this.userId,
    this.subjectId,
    this.childCommentsCount,
    this.url,
    this.postId,
    this.subjectType,
    this.sticky = false,
    this.votes,
    this.user,
    // this.childComments,
    this.maker = false,
    this.hunter = false,
    this.liveGuest = false,
  });

  @override
  List<Object?> get props => [id];
}
