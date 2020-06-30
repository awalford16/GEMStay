import 'package:flutter/material.dart';
import 'package:gemstay_app/classes/jack.dart';
import 'package:gemstay_app/components/jack_display.dart';

class ControlCentre extends StatefulWidget {
  @override
  _ControlCentreState createState() => _ControlCentreState();
}

class _ControlCentreState extends State<ControlCentre> {

  var deviceName = "gemstay-2912";
  var deviceStatus;
  var busy = false;
  List<Jack> jackStatus = [
    Jack(pos: "FL", status: 1.0, lowered: true),
    Jack(pos: "FR", status: 1.0, lowered: true),
    Jack(pos: "BL", status: 0.2, lowered: false),
    Jack(pos: "BR", status: 0.2, lowered: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('$deviceName Ready', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    color: Colors.green[600],
                  ),
                ),
              )
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: jackStatus.map((jack) => JackDisplay(
                    jack: jack
                  )).toList(),
                ),
                Row(
                  mainAxisAlignment: this.busy ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Visibility(
                    visible: !this.busy,
                    child: RaisedButton.icon(
                      color: Colors.red[400],
                      onPressed: () => {},
                      label: Text('Unlock', style: TextStyle(color: Colors.white)),
                      icon: Icon(Icons.lock_open, color: Colors.white,)
                    ),
                  ), 
                  RaisedButton.icon(
                    color: Colors.amber[300],
                    onPressed: () => {},
                    label: Text('Pause Lowering'),
                    icon: Icon(Icons.pause)
                  )
                ],),
              ],
            ),
          ),
        ],
      )
    );
  }
}