import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: <AppTheme>[
        // AppTheme.light(),
        // AppTheme.dark(),
        customAppTheme(),
        customAppTheme(),

        // customAppTheme() ? darkTheme : lightTheme,
      ],
      child: MaterialApp(
        home: ThemeConsumer(
          child: HomePage(),
        ),
      ),
    );
  }
}

final darkTheme = ThemeData(
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  bottomAppBarColor: Colors.blue,
  buttonColor: Colors.cyan[300],
  scaffoldBackgroundColor: Color(0xFF212121),
  textSelectionColor: Colors.teal
);

final lightTheme = ThemeData(
  primaryColor: Color(0xFFFBC02D),
  brightness: Brightness.light,
  buttonColor: Color(0xFFFFAB91),
  bottomAppBarColor: Colors.blue,
  scaffoldBackgroundColor: Color(0xFFFFF9C4),
  accentColor: Colors.blue,
);

AppTheme customAppTheme() {
  return AppTheme(
    id: "custom_theme",
    description: "Custom Color Scheme",
    data: AppTheme.dark() != null ? darkTheme : lightTheme,
    // data: darkTheme ?? lightTheme
    // data: ThemeDatadarkTheme ? lightTheme
    // data: ThemeData(
    //   accentColor: Colors.yellow,
    //   primaryColor: Colors.red,
    //   scaffoldBackgroundColor: Colors.yellow[200],
    //   buttonColor: Colors.amber,
    //   dialogBackgroundColor: Colors.yellow,
    // ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Switch(
            //   value: ThemeProvider.controllerOf().nextTheme(),
            // )
            RaisedButton(
              child: Text("Next Theme"),
              onPressed: ThemeProvider.controllerOf(context).nextTheme,
            ),
            RaisedButton(
              child: Text("Theme Dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => ThemeConsumer(child: ThemeDialog()));
              },
            ),
            RaisedButton(
              child: Text("Second Screen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ThemeConsumer(child: SecondPage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Next Theme"),
          onPressed: ThemeProvider.controllerOf(context).nextTheme,
        ),
      ),
    );
  }
}