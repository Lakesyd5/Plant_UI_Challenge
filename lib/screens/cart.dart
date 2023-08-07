import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_the_plant_ui/providers/cart_state_notifier.dart';
import 'package:save_the_plant_ui/screens/dashboard.dart';
import 'package:save_the_plant_ui/widgets/cart_card.dart';
import 'package:slide_to_act_reborn/slide_to_act_reborn.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItem = ref.watch(cartStateNotifier);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cart',
            style: GoogleFonts.lato(fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {
              ref.read(cartStateNotifier.notifier).clearAllPlantInCart();
            }, icon: const Icon(Icons.delete, size: 30, color: Colors.black54))
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 238, 245, 231),
        body: Column(
          children: [
            Expanded(
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  
            
                  if (cartItem.isEmpty) {
                    return Center(
                      child: Text('Your Cart is Empty',
                          style: GoogleFonts.lato(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                    );
                  }
            
                  return ListView.builder(
                    itemCount: cartItem.length,
                    itemBuilder: (context, index) {
                      final item = cartItem[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: CartCard(
                            plantname: item.plantName ?? '',
                            price: item.price ?? 0,
                            imagePath: item.imagePath ?? '', 
                            onPressed: () {  
                              ref.read(cartStateNotifier.notifier).removePlantFromCart(item);
                            },),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Amount', style: GoogleFonts.lato(fontSize: 21, fontWeight: FontWeight.w500)),
                      Text('\$${cartItem.fold<double>(0, (sum, item) => sum + (item.price ?? 0))}', style: GoogleFonts.lato( fontSize: 30, fontWeight: FontWeight.w900),)
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Slide to Checkout Button
                  SlideAction(
                    text: 'Swipe to Checkout',
                    textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    elevation: 0,
                    sliderRotate: false,
                    outerColor: const Color.fromARGB(255, 171, 203, 137),
                    innerColor: const Color.fromARGB(255, 238, 245, 231),
                    sliderButtonIcon: const Icon(CupertinoIcons.arrow_right, size: 27,color: Color.fromARGB(255, 171, 203, 137),),
                    onSubmit: () {
                      ref.invalidate(cartStateNotifier);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Dashboard()));
                    },

                  )
                ],
              ),
            )
          ],
        ));
  }
}
