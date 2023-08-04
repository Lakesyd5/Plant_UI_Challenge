import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatefulWidget {
  const PlantCard(
      {super.key,
      required this.plantname,
      required this.price,
      required this.imagePath});
  final String plantname;
  final String price;
  final String imagePath;

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
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
                alignment: Alignment.centerRight,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
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
          left: -70,
          top: -93,
          child: Image.asset(
            widget.imagePath,
            width: 300,
            height: 300,
          ),
        ),
    
      ]),
    );
  }
}




// Container(
//       clipBehavior: Clip.none,
//       height: 210,
//       width: 360,
//       decoration: ShapeDecoration(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(25),
//         ),
//         color: const Color.fromARGB(255, 171, 203, 137),
//       ),
//       child: Stack(
//         alignment: Alignment.centerRight,
//         clipBehavior: Clip.none,
//         children: [
//           Positioned(
//             left: -70,
//             top: -93,
//             child: Image.asset('assets/monstera-deliciosa-plant-pot.png',
//                 width: 300),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 25),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 90),
//                 Text('Stubborn Grass',
//                     style: GoogleFonts.lato(
//                         fontSize: 23, fontWeight: FontWeight.w700)),
//                 const SizedBox(height: 8),
//                 Text('\$99.00',
//                     style: GoogleFonts.lato(
//                         fontSize: 35, fontWeight: FontWeight.w900))
//               ],
//             ),
//           ),
//           Positioned(
//             right: -10,
//             child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               elevation: 20,
//               backgroundColor: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               shadowColor: Colors.black.withOpacity(0.6),
//             ),
//             onPressed: () {},
//             child: const Padding(
//               padding: EdgeInsets.symmetric(vertical: 14),
//               child: CircleAvatar(
//                 radius: 8,
//                 backgroundColor: Colors.black,
//                 child: Icon(
//                   Icons.add,
//                   size: 16,
//                 ),
//               ),
//               // SizedBox(width: 12),
//             ),
//           ),)
//         ],
//       ),
//     );