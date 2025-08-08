
import 'package:flutter/material.dart';

import '../../../home/ui/widgets/app_icon_widget.dart';
import 'otp_verificationScreen.dart';



class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});
 static const String name ='/email-verification';
  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {

  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
              children: [
                const SizedBox(height: 80,),
              const  AppIconWidget(),
                const SizedBox(height: 20,),
                 Text('Welcome Back',style: Theme.of(context).textTheme.titleLarge,),
                Text('Please Enter Your Number ',style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(height: 20,),
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
                const SizedBox(height: 20,),
                ElevatedButton(

                  onPressed:(){
                    //if(_formKey.currentState!.validate()){}
                    Navigator.pushNamed(context, OtpVerificationScreen.name);
                  }, child: Text("NEXT"),),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
