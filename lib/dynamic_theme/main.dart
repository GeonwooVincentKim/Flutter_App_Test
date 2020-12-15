import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/dynamic_theme/body.dart';
import 'package:flutter_app_test/dynamic_theme/dynamic_provider_theme.dart';
import 'package:flutter_app_test/dynamic_theme/test.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DynamicThemeProvider())
      ],
      child: MyAppSub(),
      // child: DynamicTheme(
      //   defaultBrightness: Brightness.light,
      //   data: (brightness) => ThemeData(
      //     primarySwatch: Colors.amber,
      //     brightness: brightness,
      //   ),
      //   // data: (brightness) => darkTheme,
      //   themedWidgetBuilder: (context, theme) {
      //     return MaterialApp(
      //       title: 'Flutter Demo',
      //       theme: theme,
      //       initialRoute: "/",
      //       routes: {
      //         "/": (context) => Body(title: "Flutter Demo Home Page"),
      //       },
      //       onGenerateRoute: (settings) {
      //         final List<String> routeGenerator = settings.name.split("/");
      //         if(routeGenerator[0] != '') return null;
      //         if(routeGenerator[1] == 'test') {
      //           String subRouteID = routeGenerator[2];
      //           return MaterialPageRoute(builder: (BuildContext context) => Test(testID: subRouteID));
      //         }
      //       },
      //       onUnknownRoute: (settings) => MaterialPageRoute(builder: (BuildContext context) => Body()),
      //     );
      //   }
      // )
    );
  }
}

class MyAppSub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicThemeProvider>(context);
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        // defaultBrightness: lightTheme,
        data: (brightness) => ThemeData(
          primarySwatch: Colors.amber,
          // primaryColor: Colors.black,
          // bottomAppBarColor: Colors.blue,
          // buttonColor: Colors.cyan[300],
          // scaffoldBackgroundColor: Color(0xFF212121),
          // textSelectionColor: Colors.teal,
          brightness: brightness,
        ),
        // data: (brightness) => themeProvider.getDarkMode() ? darkTheme : lightTheme,
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
      );
  }

}