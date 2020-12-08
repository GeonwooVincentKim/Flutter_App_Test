import 'package:flutter/material.dart';


class Detail extends StatelessWidget{
  final String detailID;
  Detail({@required this.detailID});

  Widget _buildDetailAppBar(){
    return AppBar(
      title: Text("DetailDetail"),
      backgroundColor: Colors.black,
      centerTitle: true,
      actions: [

      ],
    );
  }

  Widget _buildDetailBody(){
    return Container(
      child: Text("Hello Detail")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildDetailAppBar(),
      body: _buildDetailBody(),
    );
  }
}