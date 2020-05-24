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
        title(),
        Container(color: Colors.black, height: 2, width: 250, margin: EdgeInsets.all(10.0)),
        infoCard(Constants.PHONE, Icons.phone),
        infoCard(Constants.EMAIL, Icons.mail),
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
      style: TextStyle(fontSize: 40.0, fontFamily: 'Pacifico'),
    );
  }

  Text title() {
    return Text(
      Constants.PROFILE_TITLE,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }

  Widget infoCard(String text, IconData icon) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        color: Colors.black45,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(icon, color: Colors.white),
              Text(text, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
