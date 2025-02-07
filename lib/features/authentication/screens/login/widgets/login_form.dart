import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FLoginForm extends StatelessWidget {
  const FLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: FTexts.email,
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: FTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(FTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    FTexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: FSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: Text(FTexts.signIn)),
            ),
            const SizedBox(
              height: FSizes.spaceBtwItems,
            ),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: Text(FTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
