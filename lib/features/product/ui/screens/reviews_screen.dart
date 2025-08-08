import 'package:e_com_project/features/product/ui/screens/creat_reviews_screen.dart';
import 'package:flutter/material.dart';
class ReviewsScreen extends StatefulWidget {
  static const String name = '/ReviewsScreen';

  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
            return const ReviewsCard();
          },
          ),
          ),
           _reviewsBulder(context)
        ],
      )








    );
  }

  Widget _reviewsBulder(BuildContext context) {
    return Container(
            color: Colors.greenAccent.withValues(alpha: 0.1),
           height: 100,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Reviews (${20})",
                   style: Theme.of(context).textTheme.bodyLarge,
                 ),
                 FloatingActionButton(onPressed: (){
                    Navigator.pushNamed(context, CreatReviewsScreen.name);
                 },
                   child: const Icon(Icons.add,size: 30,),
                 ),
               ],
             ),
           ),
         );
  }
}

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        child:Column(
          children: [
            Row(
              children: [
                Icon(Icons.person),
                const SizedBox(width: 8,),
                Text('Rabbil Hasan',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

              ],
            ),
            Text('lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud '
                'exercitation ullamco laboris nisi ut'
                ' aliquip ex ea commodo consequat.',
               style: TextStyle(
                color: Colors.grey,
                 fontSize: 14,
               ),),
          ],

        ) ,
      ),
    );
  }
}
