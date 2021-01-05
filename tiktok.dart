import 'package:flutter/material.dart';

class TiktokBanOP extends StatefulWidget {
  @override
  _TiktokBanOPState createState() => _TiktokBanOPState();
}

class _TiktokBanOPState extends State<TiktokBanOP> {
  String money = '₹0 (Nithalle)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.purpleAccent[700],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  minRadius: 45.0,
                  maxRadius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://i.timesnowhindi.com/stories/zomato_boy_sonu.jpg?tr=w-1200,h-900'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.person, color: Colors.purpleAccent[700]),
                    title: Text('Name'),
                    trailing: Text('Chomu Ladka'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.purpleAccent[700]),
                    title: Text('Number'),
                    trailing: Text('100'),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money,
                        color: Colors.purpleAccent[700]),
                    title: Text('Money Left'),
                    trailing: Text(money),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail, color: Colors.purpleAccent[700]),
                    title: Text('Email'),
                    trailing: Text('swiggyrocks@titkok.com'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Log Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.purpleAccent[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  money = '₹100 (You > Ambani)';
                });
              },
              child: Text(
                'Add ₹100',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.purpleAccent[700],
            ),
          ),
        ],
      ),
    );
  }
}
