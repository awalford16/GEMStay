import 'package:flutter/material.dart';

class ConnectionError extends StatelessWidget {

  final deviceName;
  ConnectionError({this.deviceName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.error_outline, size: 40, color: Colors.red[300]),
        SizedBox(height: 15,),
        Center(child: Text('Device: $deviceName not connected.', textAlign: TextAlign.center,)),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.bluetooth
                ),
                label: Text('Connect to Device'),
                color: Colors.amber[300]
              )
            ),
        ],),
      ],
    );
  }
}