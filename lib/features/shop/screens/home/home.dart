import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce/common/widgets/images/FRounded_image.dart';
import 'package:ecommerce/common/widgets/products/products_cart/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FPrimaryHeaderContainer(
              child: Column(
                children: [
                  //------ Custom Home AppBar ------
                  const FHomeAppBar(),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //------ Custom Search Bar ------
                  const FSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),

                  //------ Categories Section ------
                  Padding(
                    padding: EdgeInsets.only(
                      left: FSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        //------ Section Title Categories ------
                        FSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: FSizes.spaceBtwItems,
                        ),

                        //------ Scrolling Categories ------
                        FHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FSizes.defaultSpace),
              child: Column(
                children: [
                  FPromoSlider(
                    banners: [
                      FImages.bannersDiscount,
                      FImages.bannersDiscount,
                      FImages.bannersDiscount,
                    ],
                  ),
                  SizedBox(
                    height: FSizes.spaceBtwSections,
                  ),
                  FProductCardVertical()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
