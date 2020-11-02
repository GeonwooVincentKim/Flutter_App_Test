import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(WhatsAppExample());

class WhatsAppExample extends StatefulWidget {
  @override
  _WhatsAppExampleState createState() => new _WhatsAppExampleState();
}

class _WhatsAppExampleState extends State<WhatsAppExample> {
  GlobalKey <ScaffoldState> key = new GlobalKey <ScaffoldState>();
  List items ;
  List selected= [];

  bool edit = false;


 @override
 void initState(){
   items=  [
     {"title":"message0","isChecked":false},
     {"title":"message1","isChecked":false},
     {"title":"message2","isChecked":false}
   ];
super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold( 

      key:key ,
      navigationBar: new CupertinoNavigationBar(
         leading:!edit?new CupertinoButton(
           child: new Text("Edit"),
          onPressed:()=> setState((){
              edit=true;
          }),):new CupertinoButton(
            child: new Text("Done"),
            onPressed: ()=>setState((){edit=false;}),
          ),
      middle: new Text("WhatsApp Example"),),
      child: new Material(
              child: new Stack(
          children: [


            new ListView.builder(
              itemCount: items.length,
            itemBuilder: (BuildContext context, int i) {  return new ListTile(
                title: new Text(items[i]["title"]),
                leading: edit? new Checkbox(
                  onChanged: (bool value) {
                 setState((){
                        this.items[i]["isChecked"] = value;
                        this.selected.add(i);
                 });
                }, value: items[i]["isChecked"],):null,
            );
          },
        ),
          edit?new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                   color: Colors.grey[200],
                  border: new Border.all(
                    color: Colors.grey[400]
                  )
                ),
                alignment: FractionalOffset.bottomCenter,
                  height: 50.0,

                  child: new Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text("Archive",),
                        new Text("Read"),
                        new Material(
                           child: new InkWell(
                            onTap:(){
                              print("Your list: $items");
                              for (int index in selected)
                              setState((){items.removeAt(index);});
                              print("Removed message$selected");
                              print ("Your list: $items");
                            } ,
                            child: new Text("Delete")),
                        )
                      ],
                    ),
                  )
               ),
            ],
          ):new Container(),
           ] ),
      ),

      );
  }
}