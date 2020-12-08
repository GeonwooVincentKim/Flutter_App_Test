import 'package:flutter/material.dart';
import 'package:flutter_app_test/shared_preference/config.dart';
import 'package:flutter_app_test/shared_preference/home.dart';
import 'package:flutter_app_test/shared_preference/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // MyTheme theme;
  
  @override
  void initState(){
    currentTheme.addListener(() {
      print("Changes");
      setState(() {
        
      });
    });
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      home: Home(),
    );
  }
}