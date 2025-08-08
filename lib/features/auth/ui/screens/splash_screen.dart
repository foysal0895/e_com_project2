

import 'package:e_com_project/features/common/ui/screen/main_bottom_nav_screen.dart';

import 'package:flutter/material.dart';


import '../../../home/ui/widgets/app_icon_widget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
static const String name ='/';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, MainBottomNavScreen.name);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                AppIconWidget(),
                Spacer(),
               const CircularProgressIndicator()
              ],
            ),
          ),
        ),
    );
  }
}


