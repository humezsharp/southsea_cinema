import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/basket_button.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        titleTextStyle: cinemaHeaderStyle,
        actions: const [BasketButton()],
      ),
      body: const Center(
        child: Text('Basket Screen'),
      ),
    );
  }
}