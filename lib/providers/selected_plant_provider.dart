import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_the_plant_ui/model/plant_model.dart';

final selectedPlantProvider = StateProvider<Plant>((ref) {
  return Plant();
});
