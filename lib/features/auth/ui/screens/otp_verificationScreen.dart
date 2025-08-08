import 'dart:async';
import 'package:e_com_project/app/app_colors.dart';
import 'package:e_com_project/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../home/ui/widgets/app_icon_widget.dart';


class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});
  static const String name = '/otp-verification';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Timer related variables
  int _remainingSeconds = 30;
  Timer? _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _canResend = false;
    _remainingSeconds = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds <= 0) {
        timer.cancel();
        setState(() {
          _canResend = true;
        });
      } else {
        setState(() {
          _remainingSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80),
                const AppIconWidget(),
                const SizedBox(height: 20),
                Text(
                  'Enter OTP Code',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'A 4 Digit OTP Code has been Sent',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: const Duration(milliseconds: 300),
                    pinTheme: PinTheme(shape: PinCodeFieldShape.box),
                    keyboardType: TextInputType.number,
                    controller: _otpController,
                    appContext: context,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // OTP verification logic
                    Navigator.pushNamed(context, CompleteProfileScreen.name);
                  },
                  child: const Text("NEXT"),
                ),
                const SizedBox(height: 28),

                /// Countdown text
                RichText(
                  text: TextSpan(
                    text: 'This code will be expires in ',
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: '${_remainingSeconds}s',
                        style: TextStyle(color: AppColors.themeColor),
                      ),
                    ],
                  ),
                ),

                /// Resend Button
                TextButton(
                  onPressed: _canResend
                      ? () {
                          // Add resend logic here
                          _startCountdown(); // Restart timer
                        }
                      : null, // Disable button while counting
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      color: _canResend
                          ? AppColors.themeColor
                          : Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
