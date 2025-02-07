import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
 *  THIS IS Login PAGE
 */

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //------ Logo and Title ------
              FLoginHeader(),

              //------ Form Email and Password ------
              FLoginForm(),

              //------ Divider ------
              FFormDivider(
                dividerText: FTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              //------ Footer ------
              FSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
