

import 'package:e_com_project/features/common/ui/controllers/main_bottom_nav_controllers.dart';
import 'package:e_com_project/features/home/ui/screen/home_screens.dart';
import 'package:e_com_project/wishlist/ui/screen/wish_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../cart/ui/screen/cart_list_screen.dart';
import '../../../category/ui/screens/category_screens.dart';


class MainBottomNavScreen extends StatefulWidget {
  static const String name = '/main-bottom-nav';

  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget>_screens = [
    // Add your screens here

    HomeScreens(),
    CategoryListScreens(),
    CartListScreen(),
    WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (bottomNavController) {
        return Scaffold(
          body: _screens[bottomNavController.selectedIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: bottomNavController.selectedIndex,
              onDestinationSelected: bottomNavController.changeIndex,
              destinations: const [
            NavigationDestination(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.square_grid_2x2_fill),
              label: 'Categories',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.cart_fill),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.heart_fill),
              label: 'Wishlist',
            ),
          ])

        );
      }
    );
  }
}
