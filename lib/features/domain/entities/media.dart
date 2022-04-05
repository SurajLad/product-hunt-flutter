import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final int? id;
  final int? priority;
  final String? platform;
  final String? videoId;
  final int? originalWidth;
  final int? originalHeight;
  final String? imageUrl;
  final String? mediaType;

  const Media({
    this.id,
    this.priority,
    this.platform,
    this.videoId,
    this.originalWidth,
    this.originalHeight,
    this.imageUrl,
    this.mediaType,
  });

  @override
  List<Object?> get props => [];
}
