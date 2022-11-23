import 'package:flutter/material.dart';
import 'package:magic_tech_app/views/screens/workout_list_screen.dart';
import 'package:magic_tech_app/views/screens/workout_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Magic',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: WorkoutListScreen(),
    );
  }
}


