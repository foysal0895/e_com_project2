
import 'package:e_com_project/app/assets_path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';



import '../../../common/ui/controllers/main_bottom_nav_controllers.dart';
import '../widgets/app_bar_icon_buton.dart';
import '../../../common/ui/widgets/catagori_item_widget.dart';
import '../widgets/home_carusol_slider.dart';
import '../widgets/home_section_header.dart';
import '../../../common/ui/widgets/product_item_widget.dart';
import '../widgets/product_search_bar.dart';

class HomeScreens extends StatefulWidget {
  static const String name = '/home-screens';

  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:_buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16),
          child: Column(
            children: [
              /// Search bar
              ProductSearchBar(
                  searchController: _searchController),
              const SizedBox(height: 16),
              // Carusel Slider
              HomeCarusolSlider(),
              const SizedBox(height: 16),
              HomeSectionHeader(
                title: 'Categories',
                onTap: () {
                 Get.find<MainBottomNavController>().moveToCategory();
                       // Navigate to categories
                },
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryItems()
                ),
              ),
              const SizedBox(height: 16),
              // Popular Products Section
               HomeSectionHeader(
              title: 'Popular',
                 onTap: () {
              // Handle see all categories
                },
          ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(height: 16),

              // Spacial Products Section
              HomeSectionHeader(
                title: 'Special',
                onTap: () {
                  // Handle see all categories
                },
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(height: 16),

              // New Products Section
              HomeSectionHeader(
                title: 'New',
                onTap: () {
                  // Handle see all categories
                },
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
  List<Widget> _getProductList(){
    List<Widget> productList = [];
    for(int i=0;i<10;i++){
      productList.add(Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: ProductItemWidget(),
      ));
    }
    return productList;
  }

List<Widget>_getCategoryItems(){
    List<Widget> categoryItems = [];
    for(int i=0;i<10;i++){
      categoryItems.add(Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CatagoriItemWidget(),
      ));
    }
return categoryItems;
}


  AppBar _buildAppBar() {
    return AppBar(
         automaticallyImplyLeading: false,
         title: SvgPicture.asset(AssetsPath.logo_navSvg),
         actions: [
         AppBarIconButton(
         icon: Icons.notifications_active_outlined,
              onTap: () {}
  ),
           const SizedBox(width: 8),
           AppBarIconButton(
               icon: Icons.call,
               onTap: () {}
           ),
           const SizedBox(width: 8),
           AppBarIconButton(
               icon: Icons.person,
               onTap: () {}
           ),
           const SizedBox(width: 8),
         ],
       );
  }
}







