import 'package:flutter/material.dart';
import '../model/MenuTileModel.dart';

class MenuTile extends StatelessWidget {
  final MenuTileModel _menu;
  final Function _navigateTo;
  MenuTile(this._menu, this._navigateTo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.blueGrey))),
      child: InkWell(
        onTap: () => _navigateTo(context, _menu.page),
        splashColor: Colors.lightBlueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 15.0),
            Icon(_menu.icon, color: Colors.blue),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text(_menu.text,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue)))
          ],
        ),
      ),
    );
  }
}
