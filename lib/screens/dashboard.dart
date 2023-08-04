import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/model/plant_model.dart';
import 'package:save_the_plant_ui/widgets/plant_card.dart';

class ScrollTwo extends StatelessWidget {
  const ScrollTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final shouldReverse =
        List.generate(plants.length, (index) => index % 2 != 0);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 234, 208),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // APP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Find The',
                            style: GoogleFonts.lato(
                                fontSize: 32, fontWeight: FontWeight.w900)),
                        Text('Perfect Plant',
                            style: GoogleFonts.lato(
                                fontSize: 32, fontWeight: FontWeight.w900))
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.search,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 80),
            Expanded(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final items = plants[index];
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: shouldReverse[index]
                          ? Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(3.14),
                              child: PlantCard(
                                  plantname: items.plantName,
                                  price: items.price,
                                  imagePath: items.imagePath),
                            )
                          : PlantCard(
                              plantname: items.plantName,
                              price: items.price,
                              imagePath: items.imagePath,
                            ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


