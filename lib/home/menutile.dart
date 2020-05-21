import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      splashColor: Colors.lightBlueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 20.0),
          Icon(Icons.person),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: Text('MENU NAME', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 20.0))
          )
        ],
      ),
    );
  }
}
