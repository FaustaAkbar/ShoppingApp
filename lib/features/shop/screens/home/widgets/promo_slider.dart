import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce/common/widgets/images/FRounded_image.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FPromoSlider extends StatelessWidget {
  const FPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => FRoundedImages(imageUrl: url)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ),
        const SizedBox(
          height: FSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  FCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? FColors.primary
                        : FColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
