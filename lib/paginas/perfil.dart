import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
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
                  Icons.shopping_cart,
                  color: Colors.black,
                  ),
                title: Text('Mis pedidos'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.black,
                  ),
                title: Text('Mi direccion'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.library_books,
                  color: Colors.black,
                  ),
                title: Text('Tickets y factura'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.payments,
                  color: Colors.black,
                  ),
                title: Text('Metodos de pago'),
              ),//fin de list tile niño
              ListTile(
                leading: Icon(
                  Icons.credit_card,
                  color: Colors.black,
                  ),
                title: Text('Tarjeta de recompensas'),
              ),//fin de list tile niño
        ],
      ),
    );
  }
}