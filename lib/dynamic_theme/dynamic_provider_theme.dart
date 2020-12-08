import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';
   
class DynamicThemeProvider with ChangeNotifier {  
  // ChangeNotifier : will provide a notifier for any changes in the value to all it's listeners  
  bool isDarkMode = false;  
  getDarkMode() => this.isDarkMode;  
  void changeDarkMode(isDarkMode) {  
    this.isDarkMode = isDarkMode;  
    notifyListeners(); // Notify all it's listeners about update. If you comment this line then you will see that new added items will not be reflected in the list.  
  } 

  void showChooser(BuildContext context) {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
            },
          );
          // return Switch();
        });
  }

  void changeBrightness(BuildContext context) {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  void changeColor(BuildContext context) {
    DynamicTheme.of(context).setThemeData(ThemeData(
        primaryColor: Theme.of(context).primaryColor == Colors.indigo
            ? Colors.red
            : Colors.indigo));
  }
}  