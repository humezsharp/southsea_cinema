import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 0;

  void _incrementTicket(){
    setState(() {
      ++_ticketQuantity;
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 36, 41, 54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text('HOT FUZZ (2009) 15', style: TextStyle(fontSize: 25)),
              SizedBox(height: 50),
              Text('Southsea Cinema Room'),
              Text('Friday 10th October'),
              SizedBox(height: 50),
              Text('Please know that discounts will be applied at checkout'),
              Text('Select quantaties (5 total)'),
              SizedBox(height: 60),
              Text('TICKETS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              DropdownMenu<int>(
                initialSelection: _ticketQuantity,
                onSelected: (int? value) {
                  if (value != null) {
                      setState(() {
                        _ticketQuantity = value;
                        print('Tickets selected: $_ticketQuantity');
                      });
                  }
                },
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: '1'),
                  DropdownMenuEntry(value: 2, label: '2'),
                  DropdownMenuEntry(value: 3, label: '3'),
                  DropdownMenuEntry(value: 4, label: '4'),
                  DropdownMenuEntry(value: 5, label: '5'),
                ],
              ),
              ElevatedButton(
                onPressed: _incrementTicket, 
                child: const Text('ADD TO ORDER')
              ),
              Text('Tickets selected: $_ticketQuantity')
          ],
        ),
      ),  
    ); 
  }
}

