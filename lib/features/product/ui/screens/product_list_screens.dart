
import 'package:e_com_project/features/common/ui/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.categoryName});
  final String categoryName;
static const String name = '/ProductListScreen';

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(widget.categoryName),
     ),
      body: GridView.builder(
        itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,childAspectRatio: 0.7,),
          itemBuilder: (context , index){
            return FittedBox(child: ProductItemWidget(),);
    },
      )
    );
  }
}
