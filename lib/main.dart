import 'package:flutter/material.dart';
import 'package:castillo/paginas/inicio.dart';
import 'package:castillo/paginas/listas.dart';
import 'package:castillo/paginas/menu.dart';
import 'package:castillo/paginas/perfil.dart';
import 'package:castillo/paginas/departamentos.dart';

void main() => runApp(CastilloApp());

class CastilloApp extends StatefulWidget {
  @override
  _CastilloAppState createState() => _CastilloAppState();
}

class _CastilloAppState extends State<CastilloApp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 5, vsync: this);
  } //fin de iniciar estado
  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TabBarView(
            children: <Widget>[
              Inicio(),
              Listas(),
              Departamentos(),
              Perfil(),
              Menu(),
            ],
            controller: controller,
          ),
          bottomNavigationBar: Material(
            // set the color of the bottom navigation bar
            color: Colors.blue,
            // set the tab bar as the child of bottom navigation bar
            child: TabBar(
              tabs: <Tab>[
                Tab(
                  // set icon to the tab
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.bookmarks_outlined),
                ),
                Tab(
                  icon: Icon(Icons.apps),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                ),
                Tab(
                  icon: Icon(Icons.menu),
                ),
              ],
              // setup the controller
              controller: controller,
            ),
          ),
      ),//fin de scaffold
    );//fin de material app
  }//fin de widget build
}//fin de castilloapp