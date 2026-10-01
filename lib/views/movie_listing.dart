import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: const SizedBox.shrink(),
    );
  }
}

class MovieOne extends StatelessWidget {
  const MovieOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('HOT FUZZ (2007)', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
        const Text('Southsea Cinema Room'),
        const Text('December 16th, 2024'),
        const Text('Please note memberships and discounts will be applied at checkout'),
        const Text("Select quantaties (up to 5 total)"),
        const Text("Tickets"),
      ],
    );
  }

}