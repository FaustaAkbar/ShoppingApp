import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FTermsAndConditionCheckBox extends StatelessWidget {
  const FTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: FSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${FTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${FTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? FColors.white : FColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? FColors.white : FColors.primary),
              ),
              TextSpan(
                  text: '${FTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${FTexts.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? FColors.white : FColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? FColors.white : FColors.primary)),
            ],
          ),
        ),
      ],
    );
  }
}
