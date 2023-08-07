import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_the_plant_ui/model/plant_model.dart';

final cartStateNotifier = StateNotifierProvider<CartStateNotifier, List<Plant>>((ref) {
  return CartStateNotifier();
});

class CartStateNotifier extends StateNotifier<List<Plant>> {
  CartStateNotifier() : super([]);

  void  addPlantToCart(Plant plant) {
    state = [...state, plant];
  }

  void removePlantFromCart(Plant plant) {
    state = state.where((p) => p != plant).toList();
  }

  void clearAllPlantInCart() {
    state = [];
  }
 }