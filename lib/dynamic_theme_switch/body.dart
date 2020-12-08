import 'package:flutter/material.dart';


class Body extends StatefulWidget{
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber
);

bool _light = true;

class _BodyState extends State<Body> {
  Widget _buildAppBar(){
    return AppBar(
      title: Text("BodyBody"),
      backgroundColor: Colors.white,
      centerTitle: true,
      actions: [

      ],
    );
  }

  Widget _buildBody(){
    return Center(
      child: Switch(value: _light, onChanged: (state){
        setState(() {
          _light = state;
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}