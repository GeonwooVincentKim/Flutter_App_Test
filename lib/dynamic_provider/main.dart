import 'package:flutter/material.dart';  
import 'package:flutter_app_test/dynamic_provider/dynamic_provider.dart';  
import 'package:provider/provider.dart';  
   
void main() => runApp(  
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DynamicTheme()),
      ],
      child: MyHomePage(),
    )
   );  
   
class MyHomePage extends StatefulWidget {  
 @override  
 _MyHomePageState createState() => _MyHomePageState();  
}  
   
class _MyHomePageState extends State<MyHomePage> {  
 @override  
 Widget build(BuildContext context) {  
   final themeProvider = Provider.of<DynamicTheme>(context);  
   return MaterialApp(  
     theme: themeProvider.getDarkMode() ? ThemeData.dark() : ThemeData.light(),  
     home: Scaffold(  
       appBar: AppBar(  
         title: Text(themeProvider.getDarkMode()?'Dark Mode':'Light Mode'),  
       ),  
       body: Center(  
         child: Column(  
           mainAxisAlignment: MainAxisAlignment.center,  
           children: <Widget>[  
             Text('Enable Dark Mode'),  
             Switch(  
               value: themeProvider.getDarkMode(),  
               onChanged: (value) {  
                 setState(() {  
                   themeProvider.changeDarkMode(value);  
                 });  
               },  
             ),  
           ],  
         ),  
       ),  
       drawer: Drawer(
         child: ListView(
           children: [
             ListTile(
               title: Text("Test"),
               trailing: Switch(
                 value: themeProvider.getDarkMode(),
                 onChanged: (value){
                   setState(() {
                     themeProvider.changeDarkMode(value);
                   });
                 }
               ),
             )
           ],
         )
       )
     ),  
   );  
 }  
}  