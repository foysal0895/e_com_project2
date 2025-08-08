import 'package:e_com_project/features/product/ui/screens/product_list_screens.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CatagoriItemWidget extends StatelessWidget {
  const CatagoriItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductListScreen.name,
            arguments: 'Electronics');
      },
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.themeColor.withValues(alpha: 0.1),
              ),
              child: Icon(
                Icons.electrical_services_outlined,
                color: AppColors.themeColor,
                size: 40,
              )
          ),
          const SizedBox(height: 8),
          Text(
              'Electronics',
              style:TextStyle(
                color: AppColors.themeColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              )
      
          )
        ],
      ),
    );
  }
}