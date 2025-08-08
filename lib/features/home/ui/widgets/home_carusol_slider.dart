import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarusolSlider extends StatefulWidget {
  const HomeCarusolSlider({
    super.key,
  });

  @override
  State<HomeCarusolSlider> createState() => _HomeCarusolSliderState();
}

class _HomeCarusolSliderState extends State<HomeCarusolSlider> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 200.0,
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
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber
                    ),
                    alignment: Alignment.center,
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
       Row(
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
                     color: currentIndex == i ? Colors.blue : Colors.grey,
                   ),
                 );
               }
             )
         ],
       )
      ],
    );
  }
}
