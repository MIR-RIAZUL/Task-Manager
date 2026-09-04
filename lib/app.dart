import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';

class Task_manager extends StatelessWidget {
  const Task_manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),

    );
  }
}
