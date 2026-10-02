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
      body: Text.rich(
        TextSpan(
          children: [
          TextSpan(text: 'HOT FUZZ (2007), (15)\n', style: TextStyle(fontSize: 27),),
          TextSpan(text: 'Southsea Cinema Room', style: TextStyle(fontSize: 20),),
         ],
        ),
      )
    );
  }
}

