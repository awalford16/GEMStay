import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:gemstay_app/classes/jack.dart';

class JackDisplay extends StatelessWidget {

  final Jack jack;
  JackDisplay({this.jack});

  @override
  Widget build(BuildContext context) {
    var color = this.jack.lowered ? Colors.green[600] : Colors.red[400];

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
      child: new CircularPercentIndicator(
        radius: 45.0,
        lineWidth: 3.0,
        percent: this.jack.status,
        header: Text(this.jack.pos, style: TextStyle(color: Colors.white)),
        center: new Icon(
          this.jack.lowered ? Icons.done : Icons.cancel,
          size: 30.0,
          color: color,
        ),
        backgroundColor: Colors.blueGrey[600],
        progressColor: color,
      ),
    );
  }
}