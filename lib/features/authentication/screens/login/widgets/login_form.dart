import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
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
            //------ Email ------
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

            //------ Password ------
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

            //------ Remember Me and Forget Password ------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //------ Remember Me ------
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(FTexts.rememberMe),
                  ],
                ),

                //------ Forget Password ------
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(
                    FTexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: FSizes.spaceBtwSections,
            ),

            //------ SignIn Buttons ------
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: Text(FTexts.signIn)),
            ),
            const SizedBox(
              height: FSizes.spaceBtwItems,
            ),

            //------ Create Account Buttons ------
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
