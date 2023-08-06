import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/model/button_model.dart';

class PlantButton extends StatefulWidget {
  PlantButton({super.key, this.isPressed = false});
  bool isPressed;

  @override
  State<PlantButton> createState() => _PlantButtonState();
}

class _PlantButtonState extends State<PlantButton> {
  void _toggleButton(int index) {
    setState(() {
      buttons[index].isPressed = !buttons[index].isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buttons.asMap().entries.map((entry) {
      final index = entry.key;
      final button = entry.value;
      return ElevatedButton(
        onPressed: () => _toggleButton(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: button.isPressed ? const Color.fromARGB(255, 171, 203, 137) : const Color.fromARGB(255, 238, 245, 231),
        ),
        child: Text(button.text, style: GoogleFonts.lato(color: Colors.black, fontWeight: FontWeight.w600), ),
      );
    }).toList());
  }
}
