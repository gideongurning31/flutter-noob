import 'package:flutter/material.dart';

class Kegiatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          width: double.infinity,
          child: Center(
              child: Text('Event title + event time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
        ),
        Container(
          height: 200.0,
          width: double.infinity,
          child: Center(
              child: Text('Event notes (scrollable)',
                  style: TextStyle(fontSize: 15.0))),
        ),
      ],
    );
  }
}
