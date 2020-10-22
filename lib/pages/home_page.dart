import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/widgets/avatar.dart';
import 'package:flutterapp/widgets/bottom_menu.dart';
import 'package:flutterapp/widgets/cronometer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(iconPath: 'assets/icons/home.svg', label: 'Inicio'),
          BottomMenuItem(
              iconPath: 'assets/icons/history.svg', label: 'Historial'),
          BottomMenuItem(iconPath: 'assets/icons/shop.svg', label: 'Ofertas'),
          BottomMenuItem(iconPath: 'assets/icons/menu.svg', label: 'Más'),
        ],
      ),
      body: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Avatar(),
                SizedBox(
                  height: 20,
                ),
                Text("Bienvenido"),
                Text(
                  "Jhon Martinez",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
               Cronometer(),
              ],
            ),
          )),
    );
  }
}
