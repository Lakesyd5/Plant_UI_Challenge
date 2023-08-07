// import 'package:flutter/material.dart';

class Plant {
  Plant(
      { this.plantName,
       this.price,
       this.imagePath,
       this.about});

  final String? plantName;
  final num? price;
  final String? imagePath;
  final String? about;
}

List<Plant> plants = [
  Plant(
    plantName: 'Philodendron',
    price: 99.00,
    imagePath: 'assets/monstera-deliciosa-plant-pot.png',
    about: 'Philodendron is a large genus of flowering plants in the family Araceae. As of September 2015, the World Checklist of Selected Plant Families accepted 489 species;[2] other sources accept different numbers.[3][4] Regardless of number of species, the genus is the second-largest member of the family Araceae, after genus Anthurium. Taxonomically, the genus Philodendron is still poorly known, with many undescribed species. Many are grown as ornamental and indoor plants. The name derives from the Greek words philo- ${'love, affection'} and dendron ${'tree'}. The generic name, Philodendron, is often used as the English name.',
  ),
  Plant(
      plantName: 'Bird\'s-nest Fern',
      price: 96.00,
      imagePath: 'assets/plant-terracotta-pot-birds-nest-fern-plant.png',
      about: 'Asplenium nidus is an epiphytic species of fern in the family Aspleniaceae, native to tropical southeastern Asia, eastern Australia, Hawaii (ʻēkaha in Hawaiian),[3][4] Polynesia,[5] Christmas Island,[6] India,[7] and eastern Africa. It is known by the common names bird\'s-nest fern[1][8] (a name shared by some other aspleniums) or simply nest fern.[8]'),
  Plant(
      plantName: 'Ruffled Fan Palm',
      price: 99.00,
      imagePath: 'assets/ruffled-leaf-palm-gray-pot.png',
      about: 'Licuala grandis, the ruffled fan palm, Vanuatu fan palm or Palas palm, is a species of palm tree in the family Arecaceae, native to Vanuatu, an island nation in the Pacific. It grows in the understory of primary and secondary tropical rain forests.[1] It produces hermaphroditic inflorescences.[1] It bears round green fruit that redden as they ripen, each containing a single seed.[1]'),
  Plant(
      plantName: 'Peace Lily',
      price: 99.00,
      imagePath: 'assets/peace-lily-plant-white-pot.png',
      about: 'Spathiphyllum is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies'),
  Plant(
      plantName: 'Green Plant',
      price: 57.00,
      imagePath: 'assets/green-plant-terracotta-pot-home-decor.png',
      about: 'Plants are eukaryotes, predominantly photosynthetic, that form the kingdom Plantae. Many are multicellular. Historically, the plant kingdom encompassed all living things that were not animals, and included algae and fungi. All current definitions exclude the fungi and some of the algae. By one definition, plants form the clade Viridiplantae (Latin for "green plants") which consists of the green algae and the embryophytes or land plants. The latter include hornworts, liverworts, mosses, lycophytes, ferns, conifers and other gymnosperms, and flowering plants. A definition based on genomes includes the Viridiplantae, along with the red algae and the glaucophytes, in the clade Archaeplastida.'),
  Plant(
      plantName: 'Banana Plant',
      price: 120.00,
      imagePath: 'assets/3d-illustration-houseplant.png',
      about: 'The common name “banana plant” is applied to a bunch of different species in the genus Musa, the bananas and plantains. The genus contains some 70 different plants, most of which aren’t edible or just not very pleasant to eat due to their large seeds. A hybrid called Musa × paradisiaca is said to be the parent of most edible banana cultivars.'),
];
