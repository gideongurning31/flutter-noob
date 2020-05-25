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
        Container(height: 2, width: 250, margin: EdgeInsets.all(10.0), color: Constants.COLOR_PRIMARY_LIGHT),
        infoCard(Constants.PHONE, Icons.phone),
        infoCard(Constants.EMAIL, Icons.mail),
      ],
    );
  }

  CircleAvatar circleAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/images/profile.jpg'),
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
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 20.0),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
