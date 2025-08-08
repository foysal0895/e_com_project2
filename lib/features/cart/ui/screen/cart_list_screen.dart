
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../app/app_colors.dart';

import '../../../common/ui/controllers/main_bottom_nav_controllers.dart';
import '../../widget/cart_product_item_widget.dart';
class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {

    return PopScope (
      canPop: false,
      onPopInvokedWithResult: (_,__){
        _onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart List'),
          leading: IconButton(
            onPressed: _onPop,
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(
                itemCount: 5,

                itemBuilder: (context,index){
              return CartProductItemWidget();
            }
            ),
            ),
            
           _buildCheckOutAndPriceSection(Theme.of(context).textTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckOutAndPriceSection(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withValues(alpha: 0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Price'),
              Text('\$100',style: textTheme.headlineSmall,),
            ],
          ),

          SizedBox(
              width: 120,
              child: ElevatedButton(onPressed: (){},
                  child: Text('Add to Cart'))),
        ],
      ),
    );
  }
  void _onPop() {
    Get.find<MainBottomNavController>().moveToHome();
    // Handle the pop action here
  }
}


