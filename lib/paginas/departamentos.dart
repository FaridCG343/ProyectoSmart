import 'package:flutter/material.dart';

class Departamentos extends StatefulWidget {
  @override
  _DepartamentosState createState() => _DepartamentosState();
}

class _DepartamentosState extends State<Departamentos> {
    int _value=1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *0.23,
            color:Color.fromRGBO(56, 124, 255, 1),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Image.asset('assets/logoSmart.png',width:60),
                      ),
                      DropdownButtonHideUnderline(  
                        child:DropdownButton(
                          icon: Icon(Icons.arrow_drop_down_circle_outlined,size:20, color:Colors.white),
                          dropdownColor: Colors.grey,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,),
                            value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("Smart Durango"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("Smart Las torres"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("Smart Zaragoza"),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Text("Smart Libramiento"),
                              value: 4,
                            ),
                          ],
                          onChanged: (int value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          hint:Text("Select item")
                        ),
                        ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size:50,
                      ),
                  ],//fun de widget[]
                ),//fin de row
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    style: TextStyle(
                      color:Colors.white,
                      
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white, width: 2),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white, width: 2),
                      ),
                      hintText: 'Buscar',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,  
                      ),
                    ),
                  ),//fin de text field
                ),//fin de padding
              ],//fin de widget[]
            ),//fin de column
          ),//fin de container
          Container(
            width: MediaQuery.of(context).size.width,
            child:Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child:Text("Departamentos",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ), 
                    ),
                  ],
                ),//fin de row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/alimentos congelados.jfif',
                          height:150,
                          ),
                          Text('Alimentos Congelados')
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/carnes.jfif',
                          height:150,
                          ),
                          Text('Carnes, Pescado y Mariscos')
                        ],
                      ),
                    ),
                  ],
                ),//fin de row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/frutas.jfif',
                          height:150,
                          ),
                          Text('Frutas')
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/bebidas.jpg',
                          height:150,
                          ),
                          Text('Bebidas')
                        ],
                      ),
                    ),
                  ],
                ),//fin de row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/vinos y licores.jpg',
                          height:150,
                          ),
                          Text('Vinos y licores')
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/lacteos.jpg',
                          height:150,
                          ),
                          Text('Lacteos y huevo')
                        ],
                      ),
                    ),
                  ],
                ), 
              ],
            ),//fin de column
          ),//fin de container
        ],//fin de widget[]
      ),//fin de list view
    );//fin de scaffold
  }//fin de widget build
}//fin de class departamentos