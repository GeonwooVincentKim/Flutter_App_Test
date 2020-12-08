import 'package:flutter/material.dart';


class Test extends StatelessWidget{
  final String testID;
  Test({@required this.testID});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello World!!")
    );
  }
}