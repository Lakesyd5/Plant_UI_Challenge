import 'package:flutter/material.dart';
import 'package:save_the_plant_ui/screens/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
            seedColor: const Color.fromARGB(255,238,245,231)),
      ),
      debugShowCheckedModeBanner: false,
      home: const Landing(),
    );
  }
}

