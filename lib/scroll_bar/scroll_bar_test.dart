import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView.builder(
                controller: _scrollController,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                    title: Text("Item: ${index + 1}"),
                  ));
                }),
          ),
        ),
      ),
    );
  }
}