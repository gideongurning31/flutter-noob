import 'package:flutter/material.dart';
import '../Constants.dart';
import '../model/MenuTileModel.dart';

class MenuTile extends StatelessWidget {
  final MenuTileModel _menu;
  final Function _navigateTo;
  MenuTile(this._menu, this._navigateTo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Constants.COLOR_PRIMARY_LIGHT))),
      child: InkWell(
        onTap: () => _navigateTo(context, _menu.page),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 15.0),
            Icon(_menu.icon),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text(_menu.text,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)))
          ],
        ),
      ),
    );
  }
}
