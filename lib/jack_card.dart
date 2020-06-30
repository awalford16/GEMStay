import 'package:flutter/material.dart';
import 'classes/jack.dart';

class JackCard extends StatelessWidget {

  // Final implies the data will not change over time
  final Jack jack;
  final Function delete;
  JackCard({ this.jack, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text(
            jack.pos,
            style: TextStyle(fontSize: 18, color: Colors.grey[600])
          ),
          SizedBox(height: 6),
          Text(
            '${jack.status}', 
            style: TextStyle(fontSize: 14, color: Colors.grey[800])
          ),
          SizedBox(height: 8),
          FlatButton.icon(
            onPressed: delete,
            label: Text('Delete Jack'),
            icon: Icon(Icons.delete)
          )
        ],),
      )
    );
  }
}