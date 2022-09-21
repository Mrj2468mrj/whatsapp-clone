import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsupp/screen/call_list.dart';
import 'package:whatsupp/screen/chat_li.dart';
import 'package:whatsupp/widgets/call.dart';

class Homescreen extends StatefulWidget{
  @override 
  State<Homescreen> createState() => _HomescreenState();

}
class _HomescreenState extends State<Homescreen>
with SingleTickerProviderStateMixin 
{
  late TabController _tb;
  @override
  void initState(){
    super.initState();
    _tb=TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override 
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.camera_alt,
        ),
        ),
        const Tab(
          text: 'CHATS',
        ),
        const Tab(
          text:'STATUS',
        ),
        const Tab(
          text:'CALLS',
          ),
      ],
      controller: _tb,
      ),
      
      actions: [
        Icon(Icons.search),
        PopupMenuButton(itemBuilder:(BuildContext context){
        return[
          PopupMenuItem(child: Text('New Group'),value: 1,),
          PopupMenuItem(child: Text('New broadcast'),value: 2,),
          PopupMenuItem(child:  Text('Linked device'),value: 3,),
          PopupMenuItem(child:  Text('Shared meassaghe'),value: 4,),
          PopupMenuItem(child:  Text('Payments'),value: 5,),
          PopupMenuItem(child:  Text('Settings'),value: 6,)
        ];
        })
      ],
      title: Text('whatsupp',
      style: TextStyle(fontWeight: FontWeight.bold,),
      ),
    ),
    body: TabBarView(children: 
    [
      Text('Camera'),
      ChatList(),
     Text('Status'),
     Calls(),
     


    ],
    controller: _tb,
    ),
  );
}
}
