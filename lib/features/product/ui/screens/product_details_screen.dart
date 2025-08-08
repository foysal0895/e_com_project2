
import 'package:e_com_project/app/app_colors.dart';
import 'package:e_com_project/features/product/ui/screens/reviews_screen.dart';
import 'package:e_com_project/features/product/widgets/product_image_carusol.dart';
import 'package:e_com_project/features/common/ui/widgets/product_quantity_inc_dec_button.dart';
import 'package:e_com_project/features/product/widgets/size_picker_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/color_picker_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});
 final int productId;
  static const String name = '/ProductDetailsScreen';
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override

  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details'
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageCarusolSlider(),
                  Padding(padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [Row(
                        children: [
                          Expanded(
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Happy new year special',
                                         style: textTheme.bodyLarge,
                                       ),
                                Row(children: [
                                  _ratingSection(),
                                  const SizedBox(width: 4),
                                  TextButton(onPressed: (){
                                    Navigator.pushNamed(context, ReviewsScreen.name);
                                  },
                                      child: Text('Reviews')),

                                  Container(child:
                                  IconButton(onPressed: (){},
                                    icon: Icon(Icons.favorite_border,
                                      color: AppColors.themeColor,
                                      size: 20,
                                    ),
                                  )
                                  ),
                                ],
                                ),
                                const SizedBox(height: 16,),
                                Text('Color', style: textTheme.bodyMedium,
                                     ),
                                     SizedBox(height: 16,),
                                     ColorPickerWidget(
                                       colors: [
                                         Colors.red,
                                         Colors.blue,
                                         Colors.green,
                                         Colors.yellow,
                                         Colors.purple,
                                         Colors.orange,
                                       ],
                                     ),
                                      const SizedBox(height: 16,),
                                     SizePickerWidget(sizes: [
                                       'S',
                                       'M',
                                       'L',
                                       'XL',
                                       'XXL',
                                     ]),
                
                                     const SizedBox(height: 16,),
                                     Text('Description',
                                       style: textTheme.bodyMedium,
                                     ),
                                      const SizedBox(height: 8,),
                                      Text('This is a sample product description. It provides'
                                          ' details about the product, including its features,'
                                          ' specifications, and benefits. This text is meant '
                                          'to give customers an idea of what to expect from the product.',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),


                                      )
                                     ],
                                  ),
                                   ),
                                  ProductQuantityIncDecButton(
                                    onChange: (int value) {
                                      // Handle quantity change
                                    },
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildAddToCartAndPriceSection( textTheme),
          ],
        ),
   
    );
  }

  Widget _ratingSection() {
    return Wrap(
      children: [
        Icon(Icons.star,
          color:   Colors.amber,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text('4.5', style: TextStyle(
            color: AppColors.themeColor,
            fontSize: 14
        ),
        )
      ],
    );
  }

  Widget _buildAddToCartAndPriceSection(TextTheme textTheme) {
    return Container(
          padding: const EdgeInsets.all(16),
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
}
