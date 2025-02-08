import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //------ Heading ------
            Text(
              FTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: FSizes.spaceBtwItems,
            ),
            Text(
              FTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: FSizes.spaceBtwSections * 2,
            ),

            //------ Text Field ------
            TextFormField(
              decoration: const InputDecoration(
                labelText: FTexts.email,
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBtwSections,
            ),

            //------ Submit Button ------
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(FTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
