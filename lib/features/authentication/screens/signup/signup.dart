import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
 *  THIS IS SignUp PAGE
 */

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            FSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //------ Title ------
              Text(
                FTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Form ------
              SignUpForm(),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Divider ------
              FFormDivider(dividerText: FTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Social Button ------
              const FSocialButtons(),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
