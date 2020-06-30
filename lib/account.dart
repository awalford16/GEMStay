import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Account Page'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: CircleAvatar(backgroundImage: AssetImage('assets/car_img.jpg'), radius: 40)),
            Divider(height: 60, color: Colors.grey[800],),
            Text('NAME', style: TextStyle(color: Colors.grey, letterSpacing: 2)),
            SizedBox(height: 10),
            Text('Adam', style: TextStyle(color: Colors.amberAccent[200], letterSpacing: 2, fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text('CONNECTED DEVICES', style: TextStyle(color: Colors.grey, letterSpacing: 2)),
            SizedBox(height: 10),
            Text('gemstay-12423', style: TextStyle(color: Colors.amberAccent[200], letterSpacing: 2, fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10),
              Text('awalford16@gmail.com', style: TextStyle(color: Colors.grey[400], fontSize: 18, letterSpacing: 1))
            ],)
          ],
        )
      )
    );
  }
}