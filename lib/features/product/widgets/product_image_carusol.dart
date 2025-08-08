
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductImageCarusolSlider extends StatefulWidget {
  const ProductImageCarusolSlider({
    super.key,
  });

  @override
  State<ProductImageCarusolSlider> createState() => _HomeCarusolSliderState();
}

class _HomeCarusolSliderState extends State<ProductImageCarusolSlider> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 260.0,
            viewportFraction: 0.95,
            onPageChanged: (currentIndex, reason) {
              _currentIndex.value = currentIndex;
            },
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(

                        color: Colors.grey
                    ),
                    alignment: Alignment.center,
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),

        Positioned(
          bottom:8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0; i<5; i++)
                ValueListenableBuilder<int>(
                    valueListenable: _currentIndex,
                    builder: (context, currentIndex, child) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == i ? Colors.blue
                              : Colors.white,
                        ),
                      );
                    }
                )
            ],
          ),
        )
      ],
    );
  }
}
