import 'dart:ui';

import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const megaHeading = TextStyle(
    fontSize: 60,
    height: 78 / 60,
    fontWeight: FontWeight.w900,
    letterSpacing: -0.8,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const xLargeHeading = TextStyle(
    fontSize: 40,
    height: 52 / 40,
    fontWeight: FontWeight.w900,
    letterSpacing: -0.8,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const largeHeading = TextStyle(
    fontSize: 28,
    height: 37.8 / 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const mediumHeading = TextStyle(
    fontSize: 24,
    height: 32.4 / 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const smallHeading = TextStyle(
    fontSize: 20,
    height: 24 / 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const primaryBody = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );
  static const primaryBodyBold = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const secondaryBody = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const secondaryBodyBold = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const tertiaryBody = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const tertiaryBodyBold = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const primaryLabel = TextStyle(
    fontSize: 10,
    height: 12 / 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );

  static const primaryLabelBold = TextStyle(
    fontSize: 10,
    height: 12 / 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: <FontFeature>[
      FontFeature.enable('ss03'),
      FontFeature.enable('ss01'),
      FontFeature.disable('liga'),
    ],
  );
}
