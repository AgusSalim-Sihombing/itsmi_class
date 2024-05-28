import 'package:flutter/material.dart';
import 'package:aplikasi_nonton_id/screen/screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidgets()[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        backgroundColor: Color.fromRGBO(28, 26, 41, 20),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper_outlined), label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Bioskop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  List<Widget> _bodyWidgets() {
    return [
      const HomeScreen(),
      const TicketScreen(),
      const BioskopScreen(),
      const ProfileScreen(),
    ];
  }
}
