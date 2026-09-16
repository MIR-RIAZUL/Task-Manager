import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/ui/widgets/screen_backround.dart';

import 'Reset_password.dart';
import 'login_screen.dart';

class Verify_otp extends StatefulWidget {
  const Verify_otp({super.key});

  @override
  State<Verify_otp> createState() => _Verify_otpState();
}

class _Verify_otpState extends State<Verify_otp> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Text(
                    'Enter OTP',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "A 6 digit verification code has been sent to your email address",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Enter 6-digit code',
                    ),
                    onChanged: (value) {},
                  ),

                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: _onTapVerifyButton,
                    child: Text('Verify'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                            text: "Already have account? ",
                            children: [
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTaploginUpButton,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTaploginUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  void _onTapVerifyButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Reset_passowrd()),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
