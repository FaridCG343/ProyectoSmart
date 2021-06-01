import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Mis Listas'), backgroundColor: Color.fromRGBO(56, 124, 255, 1), actions: <Widget>[
        IconButton(
            icon: Icon(
          Icons.add_box_outlined,
          color: Colors.white,
          size: 30,
        )),
      ]),
      body: ListView(children: <Widget>[
        ListTile(
          title: Text('Mis favoritos'),
          subtitle: Text('0 articulos'),
        )
      ]),
    );
  }
}
