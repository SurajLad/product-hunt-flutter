import 'package:equatable/equatable.dart';

class Topic extends Equatable {
  final int? id;
  final String? name;
  final String? slug;
  final DateTime? createdAt;
  final String description;
  final int followersCount;
  final int postsCount;
  final DateTime? updatedAt;
  final String image;
  final bool trending;

  const Topic({
    this.id,
    this.name,
    this.slug,
    this.createdAt,
    this.description = '',
    this.followersCount = 0,
    this.postsCount = 0,
    this.updatedAt,
    this.image = '',
    this.trending = false,
  });

  @override
  List<Object?> get props => [];
}
