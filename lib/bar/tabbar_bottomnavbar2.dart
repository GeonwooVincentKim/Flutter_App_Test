import 'package:flutter/material.dart';
void main() => runApp(MyTapSample());


class MyTapSample extends StatefulWidget {
  @override
  _MyTapSampleState createState() => _MyTapSampleState();
}

class _MyTapSampleState extends State<MyTapSample>
    with SingleTickerProviderStateMixin {
  TabController ctr;

  @override
  void initState() {
    super.initState();
    ctr = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    ctr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Pages"),
          backgroundColor: Colors.lime,
          bottom: new TabBar(
            controller: ctr,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.arrow_forward)),
              new Tab(icon: new Icon(Icons.arrow_downward)),
              new Tab(icon: new Icon(Icons.arrow_back)),
            ],
          ),
        ),
        bottomNavigationBar: new Material(
            color: Colors.pinkAccent,
            child: new TabBar(
              controller: ctr,
              tabs: <Tab>[
                new Tab(icon: new Icon(Icons.arrow_forward)),
                new Tab(icon: new Icon(Icons.arrow_downward)),
                new Tab(icon: new Icon(Icons.arrow_back)),
              ],
            )),
        body: new TabBarView(
          controller: ctr,
          children: <Widget>[
            new Page1(),
            new Page2(),
            new Page3(),
          ],
        ),
      )
    );
  }
}

// class MyInputText extends StatefulWidget {
//   @override
//   _MyInputTextState createState() => _MyInputTextState();
// }

// class _MyInputTextState extends State<MyInputText> {
//   String data = "";

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("My Input Text"),
//       ),
//       body: new Container(
//         child: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new TextField(
//                 decoration: new InputDecoration(
//                   hintText: "여기에 입력",
//                 ),
//                 onSubmitted: (String str) {
//                   setState(() {
//                     data = str;
//                   });
//                 },
//               ),
//               new Text(data),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//           title: new Text("MyApp"), backgroundColor: Colors.greenAccent),
//       body: new Container(
//         child: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new IconButton(
//                 icon: new Icon(Icons.account_balance, color: Colors.lime),
//                 iconSize: 100.0,
//                 onPressed: () {
//                   Navigator.pushNamed(context, "/Page1");
//                 },
//               ),
//               new Text(
//                 "MY App",
//                 style: new TextStyle(
//                   fontSize: 50.0,
//                   color: Colors.red,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Page1 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      child: new Center( 
        child: new Icon( 
          Icons.access_alarm, 
          size: 200, 
          color: Colors.red, 
          ), 
        ), 
      ); 
    } 
}

class Page2 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      child: new Center( 
        child: new Icon( 
          Icons.access_alarm, 
          size: 200, 
          color: Colors.orange, 
          ), 
        ), 
      ); 
    } 
}

class Page3 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      child: new Center( 
        child: new Icon( 
          Icons.accessible_forward, 
          size: 200, 
          color: Colors.green, 
          ), 
        ), 
      ); 
    } 
}