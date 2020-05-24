import 'package:flutter/material.dart';
import '../../services/Constants.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(child: circleAvatar()),
        SizedBox(height: 20.0),
        name(),
        Container(color: Colors.black, height: 2, width: 230, margin: EdgeInsets.all(5.0)),
        title(),
        Container(height: 200),
      ],
    );
  }

  CircleAvatar circleAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/images/profile.jpg'),
      backgroundColor: Colors.green,
      radius: 80.0,
    );
  }

  Text name() {
    return Text(
      Constants.PROFILE_NAME,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30.0, fontFamily: 'Pacifico'),
    );
  }

  Text title() {
    return Text(
      Constants.PROFILE_TITLE,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
    );
  }
}
