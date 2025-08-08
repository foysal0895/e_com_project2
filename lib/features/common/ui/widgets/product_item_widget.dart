import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../product/ui/screens/product_details_screen.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to product details screen
         Navigator.pushNamed(context, ProductDetailsScreen.name,
             arguments: 1);
      },
      child: SizedBox(
        width: 145,
        child: Card(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(16),
                child: Image.asset(AssetsPath.shoepng,
                    fit: BoxFit.cover,
                    height: 70,
                    width:145),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Nike shoe latest edition',maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text('\$120',
                          style: TextStyle(
                            color: AppColors.themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Wrap(
                          children: [
                            Icon(Icons.star,
                              color:   Colors.amber,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text('4.5',
                              style: TextStyle(
                                  color: AppColors.themeColor,
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),

                        Container(
                            child: IconButton(onPressed: (){},
                              icon: Icon(Icons.favorite_border,
                                color: AppColors.themeColor,
                                size: 20,
                              ),
                            )
                        ),

                      ],

                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
