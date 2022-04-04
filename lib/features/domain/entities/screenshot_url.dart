import 'package:equatable/equatable.dart';

class ScreenshotUrl extends Equatable {
  final String? s300px;
  final String? s850px;

  const ScreenshotUrl({
    this.s300px,
    this.s850px,
  });

  @override
  List<Object?> get props => [];
}
