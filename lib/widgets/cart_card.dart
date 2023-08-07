import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.plantname,
    required this.price,
    required this.imagePath,
    required this.onPressed,
  });

  final String plantname;
  final num price;
  final String imagePath;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 180,
          width: 350,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: const Color.fromARGB(255, 171, 203, 137),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                clipBehavior: Clip.none,
                alignment: Alignment.centerRight,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 90),
                        Text(plantname,
                            style: GoogleFonts.lato(
                                fontSize: 23, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 5),
                        Text('\$$price',
                            style: GoogleFonts.lato(
                                fontSize: 37, fontWeight: FontWeight.w900))
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                right: -15,
                top: 0,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(165, 153, 180, 121),
                      shape: BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30))),
                  padding: const EdgeInsets.only(top: 8, right: 12, bottom: 8),
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor:
                            const Color.fromARGB(165, 153, 180, 121),
                        shape: CircleBorder(
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.8),
                                width: 2.3))),
                    child: Icon(
                      Icons.delete_outline_rounded,
                      size: 25,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -70,
          bottom: 0,
          child: Image.asset(
            imagePath,
            width: 300,
            height: 300,
          ),
        ),
      ]),
    );
  }
}
