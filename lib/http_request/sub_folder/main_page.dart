import 'package:flutter/material.dart';


class MainPage extends StatelessWidget{
  // List<User> users = [];
  Future<void> refreshUsers() async{

  }

  Widget _buildMainAppBar(){
    return AppBar(
      title: Text("Main"),
      centerTitle: true
    );
  }

  Widget _buildMainBody(){
    return Container();
    // return RefreshIndicator(
    //   onRefresh: refreshUsers,
    //   child: ListView.separated(
    //     itemCount: users.length,
    //     itemBuilder: (context, i) => ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text(users[i].name),
    //     ),
    //     separatorBuilder: (context, i) => Divider(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildMainAppBar(),
      body: _buildMainBody()
    );
  }
}