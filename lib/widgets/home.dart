import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/screens/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool animate  =  false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      animate = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 1700),
          left: animate ? -350 : -650,
          top: animate ? -290 : -650,
          child: Container(
            width: 870,
            height: 735,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 171, 203, 137),
            ),
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 1700),
          left: -50,
          top: animate ? 15 : -600,
          child: Image.asset(
            'assets/peace-lily-plant-white-pot.png',
            width: 350,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 520, left: 50, right: 30),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 2000),
            opacity: animate ? 1 : 0,
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
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 1600),
          bottom: animate ? -28 : -200,
          left: -55,
          child: Image.asset('assets/plant-terracotta-pot-birds-nest-fern-plant.png', width: 220),
        )
      ],
    );
  }
}