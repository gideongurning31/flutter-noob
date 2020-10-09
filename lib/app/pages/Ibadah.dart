import 'package:flutter/material.dart';

class Ibadah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          width: double.infinity,
          child: Center(child: Text('Sekolah Minggu Gabungan 10.00 WIB', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
        ),
        Container(
          height: 200.0,
          width: double.infinity,
          child: Center(child: Text('Tata Ibadah (scrollable)', style: TextStyle(fontSize: 15.0))),
        ),
      ],
    );
  }
}
