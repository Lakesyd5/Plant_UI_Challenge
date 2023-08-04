// import 'package:flutter/material.dart';

class Plant {
  Plant({required this.plantName, required this.price, required this.imagePath});

  
  final String plantName;
  final String price;
  final String imagePath;
}

List<Plant> plants = [
  Plant(plantName: 'Philodendron', price: '\$99.00', imagePath: 'assets/monstera-deliciosa-plant-pot.png'),
  Plant(plantName: 'Peace Lily', price: '\$99.00', imagePath: 'assets/plant-terracotta-pot-birds-nest-fern-plant.png'),
  Plant(plantName: 'Ruffled Fan Palm', price: '\$99.00', imagePath: 'assets/ruffled-leaf-palm-gray-pot.png'),
  Plant(plantName: 'Peace Lily', price: '\$99.00', imagePath: 'assets/peace-lily-plant-white-pot.png'),
];