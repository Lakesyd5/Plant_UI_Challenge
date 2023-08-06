import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/model/plant_model.dart';
import 'package:save_the_plant_ui/providers/selected_plant_provider.dart';
import 'package:save_the_plant_ui/screens/plant_details.dart';
import 'package:save_the_plant_ui/widgets/plant_button.dart';
import 'package:save_the_plant_ui/widgets/plant_card.dart';
import 'package:save_the_plant_ui/widgets/reversed_plant_card.dart';

class ScrollTwo extends ConsumerWidget {
  const ScrollTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shouldReverse = List.generate(plants.length, (index) => index % 2 != 0);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 234, 208),
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
            const SizedBox(height: 15),
            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: PlantButton(),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final items = plants[index];
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 85),
                      child: shouldReverse[index]
                          ? ReversedPlantCard(
                                plantname: items.plantName ?? '',
                                price: items.price ?? '',
                                imagePath: items.imagePath ?? '',
                                onTap: () {
                                  ref.read(selectedPlantProvider.notifier).state = items;
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlantDetailScreen()));
                                },
                          )
                          : PlantCard(
                              plantname: items.plantName ?? '',
                              price: items.price ?? '',
                              imagePath: items.imagePath ?? '', 
                              onTap: () { 
                                ref.read(selectedPlantProvider.notifier).state = items;
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PlantDetailScreen()));
                               },
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

