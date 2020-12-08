import 'package:flutter/material.dart';
import 'package:flutter_app_test/dynamic_theme_switch/body.dart';
import 'package:flutter_app_test/dynamic_theme_switch/detail.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

      ],
      child: MaterialApp(
        theme: _light ? _lightTheme : _darkTheme,
        routes: {
          "/": (context) => Body(),
        },
        initialRoute: "/",
        onGenerateRoute: (settings) {
          final List<String> routeGenerator = settings.name.split("/");
          if(routeGenerator[0] != '') return null;
          if(routeGenerator[1] == '/detail'){
            String detailID = routeGenerator[2];
            return MaterialPageRoute(builder: (BuildContext context) => Detail(detailID: detailID));
          }
        },
        onUnknownRoute: (settings) => MaterialPageRoute(builder: (BuildContext context) => Body()),
      )
    );
  }
}

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