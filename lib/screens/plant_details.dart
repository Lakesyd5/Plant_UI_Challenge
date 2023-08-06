import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/model/plant_model.dart';
import 'package:save_the_plant_ui/providers/selected_plant_provider.dart';

class PlantDetailScreen extends ConsumerWidget {
  PlantDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Plant plant = ref.watch(selectedPlantProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.plantName.toString()),
        titleTextStyle: GoogleFonts.lato(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 238, 245, 231),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Hero(
              tag: 'tag-${plant.imagePath}',
              child: Image.asset(
                plant.imagePath.toString(),
                height: 400,
                width: 400,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border, size: 25,))
                  ],
                ),
                const Text('About This Plant', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                const SizedBox(height: 16),
                Text(plant.about.toString(), style: GoogleFonts.lato(fontSize: 16, color: Colors.green[900])),

              ],
            ),
          )
          // Text()
        ],
      ),
    );
  }
}
