import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //------ First Name Box ------
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: FTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: FSizes.spaceBtwInputFields,
              ),

              //------ Last Name Box ------
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: FTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          //------ User Name ------
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: FTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          //------ Email ------
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: FTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          //------ Phone Number ------
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: FTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          //------ Password ------
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: FTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffix: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: FSizes.spaceBtwSections,
          ),

          //------ Terms Condition Checkbox ------
          const FTermsAndConditionCheckBox(),
          const SizedBox(
            height: FSizes.spaceBtwSections,
          ),

          //------ Sign Up Button ------
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(
                FTexts.createAccount,
              ),
            ),
          )
        ],
      ),
    );
  }
}
