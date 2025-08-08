import 'package:flutter/material.dart';

import '../../../app/assets_path.dart';
import '../../common/ui/widgets/product_quantity_inc_dec_button.dart';

class CartProductItemWidget extends StatelessWidget {
  const CartProductItemWidget({
    super.key,});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Card(
      elevation:1,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(AssetsPath.shoepng,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8,),
            Expanded(child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('New year shoe',
                          style: textTheme.headlineSmall,
                          maxLines: 1,
                        ),
                        Row(
                          children: [
                            Text('Colors: Red'),
                            SizedBox(width: 8,),
                            Text('Size: XL'),
                          ],
                        )
                      ],
                    ),

                    IconButton(onPressed: (){

                    }, icon: const Icon(Icons.delete, color: Colors.red,)),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$120',
                      style: textTheme.headlineSmall,
                    ),
                    ProductQuantityIncDecButton(
                      onChange: (value) {
                        // Handle quantity change
                      },),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}