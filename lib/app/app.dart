
import 'package:e_com_project/features/category/ui/screens/category_screens.dart';
import 'package:e_com_project/features/product/ui/screens/creat_reviews_screen.dart';
import 'package:e_com_project/features/product/ui/screens/product_details_screen.dart';

import 'package:e_com_project/features/product/ui/screens/product_list_screens.dart';
import 'package:e_com_project/features/product/ui/screens/reviews_screen.dart';
import 'package:e_com_project/wishlist/ui/screen/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../features/auth/ui/screens/complete_profile_screen.dart';

import '../features/auth/ui/screens/otp_verificationScreen.dart';
import '../features/auth/ui/screens/phone_verification_screen.dart';
import '../features/auth/ui/screens/splash_screen.dart';
import '../features/common/ui/screen/main_bottom_nav_screen.dart';
import 'app_themdata.dart';
import 'controller_binder.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      theme:AppThemeData.liggtThemData,
      initialBinding: ControllerBinder(),
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if(settings.name == SplashScreen.name ){
          widget = const SplashScreen();
        }else if(settings.name == PhoneVerificationScreen.name){
          widget = const PhoneVerificationScreen();
        }else if(settings.name == OtpVerificationScreen.name){
          widget = const OtpVerificationScreen();
        }else if(settings.name == CompleteProfileScreen.name){
          widget = const CompleteProfileScreen();
        }else if(settings.name == MainBottomNavScreen.name){
          widget = const MainBottomNavScreen();
        }else if(settings.name == CategoryListScreens.name){
          widget = const CategoryListScreens();
        }else if(settings.name == ProductListScreen.name){
         String name =settings.arguments as String;
          widget = ProductListScreen( categoryName: name);
        } else if(settings.name == ProductDetailsScreen.name){
         int productId= settings.arguments as int;
          widget = ProductDetailsScreen(productId: productId);
        } else if(settings.name == ReviewsScreen.name){
          widget = const ReviewsScreen();
        }else if(settings.name == CreatReviewsScreen.name){
          widget = const CreatReviewsScreen();
        }
         return MaterialPageRoute(builder: (ctx){
          return widget;
         });

      },

    );
  }
}
