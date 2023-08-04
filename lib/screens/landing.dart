import 'package:flutter/material.dart';
import 'package:save_the_plant_ui/widgets/home.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,238,245,231),
      body: HomePage(),
      
    );
  }
}