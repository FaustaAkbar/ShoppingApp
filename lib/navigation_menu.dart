import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/features/shop/screens/store/store.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = FHelperFunctions.isDarkMode(context);

    return Scaffold(
      //------ Bottom Navigation Bar ------
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? FColors.black : FColors.white,
          indicatorColor: darkMode
              ? FColors.white.withOpacity(0.1)
              : FColors.black.withOpacity(0.1),

          //------ All Shorcut Destination Screen ------
          destinations: [
            const NavigationDestination(
                icon: Icon(Iconsax.home), label: 'Home'),
            const NavigationDestination(
                icon: Icon(Iconsax.shop), label: 'Store'),
            const NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Wishlist'),
            const NavigationDestination(
                icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),

      //------ Main Screen Rendering ------
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    //------ Home Screen ------
    const HomeScreen(),

    //------ Store Screen ------
    const StoreScreen(),

    //------ WishList Screen ------
    Container(
      color: Colors.purple,
    ),

    //------ Profile Screen ------
    Container(
      color: Colors.lightBlue,
    ),
  ];
}
