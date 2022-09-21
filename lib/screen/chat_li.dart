import 'package:flutter/material.dart';
import 'package:whatsupp/models/user.dart';
import 'package:whatsupp/widgets/chat_tile.dart';

class ChatList extends StatefulWidget{
  const ChatList({Key? key,}) : super (key: key);
  @override 
  State<ChatList> createState() => _ChatListState();
}
class _ChatListState extends State<ChatList>{
  List<User> ChatList =[
    User(
      avatar: "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
      name: "Jishnu",
      group: false,
      update: "12.00 pm",
      meassage: "hello" ,
    ),
    User(
      avatar: "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
      name: "Jagan",
      group: false,
      update: "11.00 pm",
      meassage: "hi" ,
    ),
    User(
      avatar: "",
      name: "Athul",
      group: false,
      update: "12.00 pm",
      meassage: "hello" ,
    ),
    User(
      avatar: "",
      name: "JM",
      group: true,
      update: "12.00 pm",
      meassage: "hello" ,
    ),
    User(
      avatar: "",
      name: "JJ",
      group: true,
      update: "12.00 pm",
      meassage: "hello" ,
    ),
  ];
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        body: ListView.builder(
          itemCount: ChatList.length,
          itemBuilder: (BuildContext context, int index) {
            return Chattile(data: ChatList[index],);
          },
        ),
        
          floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.teal,
          child: SizedBox(
            height: 90,
            child: Icon(Icons.chat,)),),

      
    );
  }
}