import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          FCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: FHelperFunctions.isDarkMode(context)
                    ? FColors.black
                    : FColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(FSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: FSizes.spaceBtwItems,
                      ),
                      FSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: FSizes.spaceBtwSections,
                      ),
                      FSectionHeading(
                        title: 'Featued Brands',
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: FSizes.spaceBtwItems / 1.5,
                      ),
                      FRoundedContainer(
                        padding: const EdgeInsets.all(FSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              padding: const EdgeInsets.all(FSizes.sm),
                              decoration: BoxDecoration(
                                color: FHelperFunctions.isDarkMode(context)
                                    ? FColors.black
                                    : FColors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image(
                                image: AssetImage(
                                  FImages.jeansIcon,
                                ),
                                color: FHelperFunctions.isDarkMode(context)
                                    ? FColors.black
                                    : FColors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
