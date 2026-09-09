import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_backround.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          children: [
            Text('Login'),
            TextFormField(),
            TextFormField(),
            FilledButton(onPressed: () {}, child: Icon(Icons.login)),
            TextButton(onPressed: () {}, child: Text('forget password')),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                text: "Don't have account? ",
                children: [TextSpan(text: "Sign Up")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
