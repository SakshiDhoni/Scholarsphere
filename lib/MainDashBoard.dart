import 'package:coverpage/Mentor.dart';
import 'package:flutter/material.dart';
import 'package:coverpage/Dashboard.dart';
import 'package:coverpage/Subject.dart';
import 'package:coverpage/profile.dart';
import 'package:coverpage/Schedule.dart';
import 'package:coverpage/Mentor.dart';

class MainDashBoard extends StatefulWidget {



  const MainDashBoard({Key? key,}) : super(key: key);

  @override
  State<MainDashBoard> createState() => _MainDashBoard();
}

class _MainDashBoard extends State<MainDashBoard> {
  int _selectedIndex = 0;
  late List<Widget> _pages;
  get bottomNavigationBar => null;
  @override
  void initState() {
    super.initState();
    _pages = [
      Dashboard(),
      Schedule(),
      profile(),
      Mentor(),
    ];
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // <-- Correction here
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Profile',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Mentor',
          // ),


        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
