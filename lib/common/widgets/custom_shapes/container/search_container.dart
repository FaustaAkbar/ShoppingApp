import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/* 

  SEARCH WIDGET

 */
class FSearchContainer extends StatelessWidget {
  const FSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: FSizes.defaultSpace,
    ),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: FDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(
            FSizes.md,
          ),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? FColors.dark
                    : FColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(FSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: FColors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: FColors.darkerGrey,
              ),
              const SizedBox(
                width: FSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
