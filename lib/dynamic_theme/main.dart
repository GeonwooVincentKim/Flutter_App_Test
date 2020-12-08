import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/dynamic_theme/body.dart';
import 'package:flutter_app_test/dynamic_theme/test.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
      ],
      child: DynamicTheme(
        defaultBrightness: Brightness.light,
          data: (brightness) => ThemeData(
          primarySwatch: Colors.indigo,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: theme,
            initialRoute: "/",
            routes: {
              "/": (context) => Body(title: "Flutter Demo Home Page"),
            },
            onGenerateRoute: (settings) {
              final List<String> routeGenerator = settings.name.split("/");
              if(routeGenerator[0] != '') return null;
              if(routeGenerator[1] == 'test') {
                String subRouteID = routeGenerator[2];
                return MaterialPageRoute(builder: (BuildContext context) => Test(testID: subRouteID));
              }
            },
            onUnknownRoute: (settings) => MaterialPageRoute(builder: (BuildContext context) => Body()),
          );
        }
      )
    );
  }
}