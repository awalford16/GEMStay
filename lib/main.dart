import 'package:flutter/material.dart';
import 'classes/jack.dart';
import 'jack_card.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class JackDisplay extends StatefulWidget {
  @override
  _JackDisplayState createState() => _JackDisplayState();
}

class _JackDisplayState extends State<JackDisplay> {

  List<Jack> jackStatuses = [
    Jack(status: 0, pos: 'Top Left'),
    Jack(pos: 'Back Right', status: 50)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Jacks'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: jackStatuses.map((jack) => JackCard(
          jack: jack,
          delete: () {
            setState(() {jackStatuses.remove(jack);});
          }
        )).toList(),
      )
    );
  }
}