import 'package:flutter/material.dart';
import 'package:flutter_app_test/theme_design/body.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

      ],
      child: MaterialApp(
        // theme: ThemeData(
        //   primaryColor: Colors.blue,
        //   accentColor: Colors.green,
        //   textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple)),
        // ),
         theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Georgia',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        routes: {
          "/": (context) => Body(),
        },
        initialRoute: "/",
        onGenerateRoute: (settings) {
          final List<String> routeGenerator = settings.name.split("/");
          if(routeGenerator[0] != '') return null;
          if(routeGenerator[1] != 'newMenu'){
            String StringID = routeGenerator[2];
            // return MaterialPageRoute(builder: (BuildContext context) => Body(menuID: StringID));
          }
        },
        onUnknownRoute: (settings) => MaterialPageRoute(builder: (BuildContext context) => Body()),
      )
    );
  }
}