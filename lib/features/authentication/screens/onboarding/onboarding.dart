import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: FTexts.onBoardingTitle1,
                subTitle: FTexts.onBoardingSubTitle1,
                image: FImages.onBoradingImage1,
              ),
              OnBoardingPage(
                title: FTexts.onBoardingTitle2,
                subTitle: FTexts.onBoardingSubTitle2,
                image: FImages.onBoradingImage2,
              ),
              OnBoardingPage(
                title: FTexts.onBoardingTitle3,
                subTitle: FTexts.onBoardingSubTitle3,
                image: FImages.onBoradingImage3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnboardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
