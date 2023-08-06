import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReversedPlantCard extends StatefulWidget {
  const ReversedPlantCard({super.key, required this.plantname, required this.price, required this.imagePath, required this.onTap});

  final String plantname;
  final String price;
  final String imagePath;
  final Function() onTap;

  @override
  State<ReversedPlantCard> createState() => _ReversedPlantCardState();
}

class _ReversedPlantCardState extends State<ReversedPlantCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 40),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            clipBehavior: Clip.hardEdge,
            height: 210,
            width: 360,
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
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 90),
                          Text(widget.plantname,
                              style: GoogleFonts.lato(
                                  fontSize: 23, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 5),
                          Text(widget.price,
                              style: GoogleFonts.lato(
                                  fontSize: 37, fontWeight: FontWeight.w900))
                        ],
                      ),
                    ),
                  ]),
                ),
                Positioned(
                  left: -15,
                  top: 0,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(165, 153, 180, 121),
                        shape: BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(30))),
                    padding: const EdgeInsets.only(top: 8, left: 12, bottom: 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: const Color.fromARGB(165, 153, 180, 121),
                          shape: CircleBorder(
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.8),
                                  width: 2.3))),
                      child: Icon(
                        CupertinoIcons.add,
                        size: 20,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: -70,
            top: -93,
            child: Hero(
              tag: 'tag-${widget.imagePath}',
              child: Image.asset(
                widget.imagePath,
                width: 300,
                height: 300,
              ),
            ),
          ),
      
        ]),
      ),
    );
  }
}