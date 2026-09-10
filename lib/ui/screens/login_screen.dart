import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_backround.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Text(
                'Get Start With',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 20),
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
      ),
    );
  }
}
