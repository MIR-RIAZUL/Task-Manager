import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';

class Task_manager extends StatelessWidget {
  const Task_manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        colorSchemeSeed: Colors.grey,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.green),

          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
