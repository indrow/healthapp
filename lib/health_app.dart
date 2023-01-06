import 'package:flutter/material.dart';
import 'package:healthapp/screens/home/home_screen.dart';

class HealtApp extends StatefulWidget {
  const HealtApp({Key? key}) : super(key: key);

  @override
  State<HealtApp> createState() => _HealtAppState();
}

class _HealtAppState extends State<HealtApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Consult doctor',
      style: optionStyle,
    ),
    Text(
      'Medicine',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: 58,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.medical_services_outlined),
                label: 'Consult doctor',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.medication_liquid_rounded),
                label: 'Medicine',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff3364E1),
            unselectedItemColor: const Color.fromRGBO(5, 19, 30, 0.2),
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
          ),
        ));
  }
}
