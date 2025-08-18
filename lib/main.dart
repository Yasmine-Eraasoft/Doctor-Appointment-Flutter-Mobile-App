import 'package:flutter/material.dart';
import 'package:my_first_app/doctor_profile_screen.dart'; // Import the doctor profile screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorProfileScreen(),
    );
  }
}
