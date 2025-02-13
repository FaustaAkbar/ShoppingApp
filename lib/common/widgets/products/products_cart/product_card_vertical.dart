import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/f_circular_icon.dart';
import 'package:ecommerce/common/widgets/images/FRounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FProductCardVertical extends StatelessWidget {
  const FProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [FShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FSizes.productImageRadius),
          color: dark ? FColors.darkerGrey : FColors.white,
        ),
        child: Column(
          children: [
            FRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(FSizes.sm),
              backgroundColor: dark ? FColors.dark : FColors.light,
              child: Stack(
                children: [
                  //------ Product Images ------
                  const FRoundedImages(
                    imageUrl: FImages.product,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: FRoundedContainer(
                      radius: FSizes.md,
                      backgroundColor: FColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: FSizes.sm, vertical: FSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: FColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: FCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBtwItems / 2,
            ),

            //------ Detail Products Title ------
            Padding(
              padding: const EdgeInsets.only(
                left: FSizes.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FProductTitleText(
                    title: "Nike Jordan Hermes",
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: FSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: FSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: FColors.primary,
                        size: FSizes.iconXs,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: FSizes.sm),
                  child: FProductPriceText(
                    price: "10000",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: FColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(FSizes.cardRadiusMd),
                      bottomRight: Radius.circular(
                        FSizes.productImageRadius,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: FSizes.iconLg * 1.2,
                    height: FSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: FColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
