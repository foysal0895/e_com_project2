import 'package:flutter/material.dart';
class CreatReviewsScreen extends StatefulWidget {
  static const String name = '/CreatReviewsScreen';
  const CreatReviewsScreen({super.key});

  @override
  State<CreatReviewsScreen> createState() => _CreatReviewsScreenState();
}

class _CreatReviewsScreenState extends State<CreatReviewsScreen> {
  final TextEditingController _firstNameController =
  TextEditingController();
  final TextEditingController _lastNameController =
  TextEditingController();
  final TextEditingController _discriptionController =
  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                hintText: 'Enter first name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(

                hintText: 'Enter last name',
                border: OutlineInputBorder(

                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _discriptionController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Write your review here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            ElevatedButton(onPressed: (){

            }, child: const Text('Submit Review')),
          ],
        ),
      ),
    );
  }
}
