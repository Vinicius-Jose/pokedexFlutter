import 'package:flutter/material.dart';
import 'package:pokedex_flutter/consts/consts_app.dart';
import 'package:pokedex_flutter/pages/home_page/widgets/app_bar_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;

    Positioned positioned = Positioned(
      top: statusWidth - (240 / 2.9),
      left: screenWidth - (240 / 1.6),
      child: Opacity(
        opacity: 0.1,
        child: Image.asset(
          ConstsApp.blackPokeball,
          height: 240,
          width: 240,
        ),
      ),
    );

    Expanded pokemonExpanded = Expanded(
      child: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Pokemon'),
            )
          ],
        ),
      ),
    );

    Container container = Container(
      child: Column(
        children: <Widget>[
          Container(
            height: statusWidth,
          ),
          AppBarHome(),
          pokemonExpanded,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[positioned, container],
      ),
    );
  }
}
