import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: FColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: FColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
