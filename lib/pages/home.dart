import 'package:flutter/material.dart';
import 'package:gemstay_app/components/connection_error.dart';
import '../components/control_centre.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool deviceConnected = false;
  var deviceName = 'gemstay-2912';
  int connAttempts = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GemStay'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        actions: <Widget>[
          IconButton(padding: EdgeInsets.symmetric(horizontal: 25), icon: Icon(Icons.account_circle, size: 35,), onPressed: () {},)
        ],
      ),
      body: 
        Padding(
          padding: EdgeInsets.fromLTRB(30, 90, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ConnectionError(deviceName: this.deviceName),
              ControlCentre()
          ],),
        ),
    );
  }
}