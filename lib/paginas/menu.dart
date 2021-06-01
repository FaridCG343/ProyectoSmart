import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                child:Image.asset('assets/logoSmart.png', width: 70),
              ),
              Text('S-mart',
                style: TextStyle(
                  fontSize: 50,
                  color:Color.fromRGBO(56, 124, 255, 1),
                ),
              ),
            ],
          ), 
          ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                  ),
                title: Text('Buscar sucursales'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.menu_book,
                  color: Colors.black,
                  ),
                title: Text('Folletos'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.sms,
                  color: Colors.black,
                  ),
                title: Text('Comentarios'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.black,
                  ),
                title: Text('Invita a tus contactos'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.black,
                  ),
                title: Text('Ayuda'),
              ),//fin de list tile niño
        ],
      ),
    );
  }
}