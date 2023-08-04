import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/screens/dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -350,
          top: -290,
          child: Container(
            width: 870,
            height: 735,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 171, 203, 137),
            ),
          ),
        ),
        Positioned(
          left: -50,
          top: 15,
          child: Image.asset(
            'assets/peace-lily-plant-white-pot.png',
            width: 350,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 520, left: 50, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Save', style: GoogleFonts.lato(fontSize: 73, fontWeight: FontWeight.w900)),
                  Text('The Plant',style: GoogleFonts.lato(fontSize: 73, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 10),
                  Text(
                    'Plants prevent soil erosion and desertification.',
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: const Color.fromARGB(255, 238, 245, 231),
                    shape: const CircleBorder( side: BorderSide(color: Colors.black, width: 2.0)),
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ScrollTwo()));
                    },
                  child: const Icon(CupertinoIcons.arrow_right, size: 40, color: Colors.black),
                )
            ],
          ),
        ),
        Positioned(
          bottom: -28,
          left: -55,
          child: Image.asset('assets/plant-terracotta-pot-birds-nest-fern-plant.png', width: 220),
        )
      ],
    );
  }
}