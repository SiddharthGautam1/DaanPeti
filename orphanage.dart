import 'package:flutter/material.dart';
import 'package:app/information.dart';

class PaneerKaParatha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Aloo Ka Paratha Orphanage',
          style: TextStyle(
            color: Colors.purpleAccent[700],
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.purpleAccent[700]),
      ),
      body: ProfileIsOp(),
    );
  }
}
