import 'package:flutter/material.dart';

class ProfileIsOp extends StatefulWidget {
  @override
  _ProfileIsOpState createState() => _ProfileIsOpState();
}

class _ProfileIsOpState extends State<ProfileIsOp> {
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
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Aloo Ka Paratha Orphanage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CircleAvatar(
                  minRadius: 45.0,
                  maxRadius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.cdnparenting.com/articles/2020/02/19121712/Paneer-Aloo-Palak-Paratha-Recipe.jpg'),
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
                    leading: Icon(Icons.person),
                    title: Text('Name'),
                    trailing: Text('Aloo Ka Paratha'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Number'),
                    trailing: Text('911'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_pin),
                    title: Text('Location'),
                    trailing: Text('Near Ramu Ke Samose'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('Email'),
                    trailing: Text('chappri@titkok.com'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                'Donate',
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
