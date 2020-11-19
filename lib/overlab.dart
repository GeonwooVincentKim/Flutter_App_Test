import 'package:flutter/material.dart';


void main() => runApp(StackExample());


class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: const EdgeInsets.all(8.0),
            height: 500.0,
            width: 500.0,
            // alignment: FractionalOffset.center,
            child: Stack(
              //alignment:new Alignment(x, y)
              children: <Widget>[
                // Container(
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(25.0),
                //         boxShadow: [
                //           new BoxShadow(
                //             blurRadius: 5.0,
                //             offset: const Offset(3.0, 0.0),
                //             color: Colors.grey,
                //           )
                //         ]
                //     ),
                //     child: new Icon(Icons.monetization_on, size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0))),
                Positioned(
                  left: 100.0,
                  child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            new BoxShadow(
                              blurRadius: 5.0,
                              offset: const Offset(3.0, 0.0),
                              color: Colors.grey,
                            )
                          ]
                      ),
                      child: new Icon(Icons.monetization_on, size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0))),
                ),
                Positioned(
                  left:40.0,
                  child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            new BoxShadow(
                              blurRadius: 5.0,
                              offset: const Offset(3.0, 0.0),
                              color: Colors.grey,
                            )
                          ]
                      )
                      ,child: new Icon(Icons.monetization_on, size: 36.0, color: const Color.fromRGBO(218, 165, 32, 1.0))),
                )

              ],
            ),
          ),
        )
    );
  }
}