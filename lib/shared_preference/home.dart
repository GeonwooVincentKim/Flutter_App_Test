import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app_test/shared_preference/config.dart';
import 'package:flutter_app_test/shared_preference/theme.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          currentTheme.switchTheme();
        },
        label: Text("Switch Theme"),
        icon: Icon(Icons.brightness_high)
      )
    );
  }
}