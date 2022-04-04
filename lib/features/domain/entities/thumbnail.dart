import 'package:equatable/equatable.dart';

class Thumbnail extends Equatable {
  final String? id;
  final String? mediaType;
  final String? imageUrl;

  const Thumbnail({
    this.id,
    this.mediaType,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [];
}
