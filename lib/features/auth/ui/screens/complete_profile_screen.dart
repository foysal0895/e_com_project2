import 'package:flutter/material.dart';

import '../../../home/ui/widgets/app_icon_widget.dart';




class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});
  static const String name = '/CompleteScreen';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _shipingAddressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80,),
                const  AppIconWidget(),
                const SizedBox(height: 20,),
                Text('Complete Profile',style: Theme.of(context).textTheme.titleLarge,),
                Text('Get started with us with your details',style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: ' First Name',
                    prefixIcon: Icon(Icons.person),

                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Phone Number',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 8),
                 TextFormField(
                  controller: _cityController,
                  decoration: InputDecoration(
                    labelText: 'City',
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your city';
                    }
                    return null;
                  },
                 ),
                const SizedBox(height: 8),
                TextFormField(
                  maxLines: 3,
                  controller: _shipingAddressController,
                  decoration: InputDecoration(
                    labelText: 'Shipping Address',
                    prefixIcon: Icon(Icons.home),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your shipping address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20,),
                ElevatedButton(

                  onPressed:(){
                    if(_formKey.currentState!.validate()){}
                   // Navigator.pushNamed(context, OtpVerificationScreen.name);
                  }, child: Text("Complete"),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
