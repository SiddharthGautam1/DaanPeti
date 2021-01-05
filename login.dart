import 'package:flutter/material.dart';
import 'package:app/tiktok.dart';
import 'package:app/daanpeti.dart';
import 'package:app/orphanage.dart';
import 'package:app/information.dart';

class DaanPetiIsOp extends StatefulWidget {
  @override
  _DaanPetiIsOpState createState() => _DaanPetiIsOpState();
}

class _DaanPetiIsOpState extends State<DaanPetiIsOp> {
  final daan = [
    HomePage(),
    TiktokBanOP(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Daan Peti',
          style: TextStyle(
            color: Colors.purpleAccent[700],
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
      ),
      body: daan[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent[700],
        selectedFontSize: 17,
        unselectedFontSize: 13,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
