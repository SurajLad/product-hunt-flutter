import 'package:equatable/equatable.dart';

class Maker extends Equatable {
  final int? id;
  final String? createdAt;
  final String name;
  final String? username;
  final String? headline;
  final String? twitterUsername;
  final String? websiteUrl;
  final String? profileUrl;
  final String? imageUrl;

  const Maker({
    this.id,
    this.createdAt,
    this.name = '',
    this.username,
    this.headline,
    this.twitterUsername,
    this.websiteUrl,
    this.profileUrl,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [];
}
