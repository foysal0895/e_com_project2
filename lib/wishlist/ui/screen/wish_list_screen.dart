
import 'package:e_com_project/features/common/ui/controllers/main_bottom_nav_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../features/common/ui/widgets/product_item_widget.dart';
class WishListScreen extends StatefulWidget {


  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,__){
        _onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wish List'),
          leading: IconButton(
            onPressed: _onPop,
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      body: GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,childAspectRatio: 0.7,),
      itemBuilder: (context , index){
      return FittedBox(child: ProductItemWidget(),);
      },
      ),
      ),
    );
  }
  void _onPop(){
    Get.find<MainBottomNavController>().moveToHome();
  }
}
