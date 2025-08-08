
 import 'package:e_com_project/features/common/ui/widgets/catagori_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui/controllers/main_bottom_nav_controllers.dart';

class CategoryListScreens extends StatefulWidget {
  const CategoryListScreens({super.key});
static const String name = '/CategoryListScreens';
  @override
  State<CategoryListScreens> createState() => _CategoryListScreensState();
}

class _CategoryListScreensState extends State<CategoryListScreens> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
     onPopInvokedWithResult: (_,__){
    Get.find<MainBottomNavController>().moveToHome();
    },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Category List'),
          leading: IconButton(onPressed: (){
            Get.find<MainBottomNavController>().moveToHome();
          }, icon: Icon(Icons.arrow_back_ios),
          ),
        ),

        body: GridView.builder(
          itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,),
            itemBuilder: (context, index){
              return const FittedBox(
                child: CatagoriItemWidget(),
              );
            }),

      ),
    );
  }
}
