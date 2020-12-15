// import 'package:flutter/material.dart';
// import 'package:flutter_app_test/app_theme/my_theme.dart';
// import 'package:flutter_app_test/app_theme/theme_provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   MyAppState createState() {
//     return new MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   AppBloc bloc;

//   @override
//   void initState() {
//     super.initState();
//     bloc = new AppBloc();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     bloc.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//           initialData: myThemes[0],
//           stream: bloc.outTheme,
//           builder: (context, AsyncSnapshot<AppTheme> snapshot) {
//             return MaterialApp(
//                 theme: snapshot.hasData ? _buildThemeData(snapshot.data) : ThemeData(),
//                 home: HomePage());
//           });
//     // return AppBlocProvider(
//     //   bloc: bloc,
//     //   child: StreamBuilder(
//     //       initialData: myThemes[0],
//     //       stream: bloc.outTheme,
//     //       builder: (context, AsyncSnapshot<AppTheme> snapshot) {
//     //         return MaterialApp(
//     //             theme: snapshot.hasData ? _buildThemeData(snapshot.data) : ThemeData(),
//     //             home: HomePage());
//     //       }),
//     // );
//   }

//     _buildThemeData(AppTheme appTheme) {    
//     return ThemeData(   
//       brightness: appTheme.theme.brightness,
//       primarySwatch: appTheme.theme.primarySwatch,      
//     );
//   }

// }