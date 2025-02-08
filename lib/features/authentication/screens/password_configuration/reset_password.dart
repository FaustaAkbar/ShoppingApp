import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Iconsax.close_square))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              //------ Image ------
              Image(
                image: AssetImage(
                  FImages.deliveredEmailIlustration,
                ),
                width: FHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Title and Subtitle ------
              Text(
                FTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),
              Text(
                FTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Buttons ------
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(FTexts.done),
                ),
              ),
              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(FTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
