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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('HOT FUZZ (2009) 15', style: TextStyle(fontSize: 25)),
            Text(''),
            Text('Southsea Cinema Room'),
            Text('Friday 10th October'),
            Text(''),
            Text('Please know that discounts will be applied at checkout'),
            Text('Select quantaties (5 total)'),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('ADD TO ORDER')
            ),
        ],
      ),  
    ); 
  }
}

