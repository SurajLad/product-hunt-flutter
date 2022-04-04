import 'package:product_hunt_flutter/features/domain/entities/screenshot_url.dart';

class ScreenshotUrlModel extends ScreenshotUrl {
  const ScreenshotUrlModel({
    final String? s300px,
    final String? s850px,
  }) : super(
          s300px: s300px,
          s850px: s850px,
        );

  factory ScreenshotUrlModel.fromJson(Map<String, dynamic> json) {
    return ScreenshotUrlModel(
      s300px: json['300px'],
      s850px: json['850px'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['300px'] = s300px;
    data['850px'] = s850px;
    return data;
  }
}
