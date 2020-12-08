import 'package:flutter/material.dart';


class Body extends StatelessWidget{
  // final String menuID;
  // Body({@required this.menuID});
  Widget _buildBodyApp(){
    return AppBar(
      title: Text("Body"),
      backgroundColor: Colors.black,
      centerTitle: true,
      actions: [

      ],
    );
  }

  Widget _buildBody(){
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "System Brightness : "
              // "System Brightness: ${MediaQuery.platformBrightnessOf(context)}"
            )
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBodyApp(),
      body: _buildBody(),
    );
  }
}