import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsupp/models/CallList.dart';
import 'package:whatsupp/widgets/call.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
List<CallList> call_data =[
  CallList(
      avatar: "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
  name: 'Jaganp',
  callTime: '10:30 AM',
  callType: 'Audio',
  icon: 'Incoming',
   ),
  CallList(
      avatar: "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
  name: 'Vate',
  callTime: '11:30 AM',
  callType: 'Video',
  icon: 'Incoming',
   ),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: call_data.length,
        
        itemBuilder: (BuildContext context, int index ){
          return CallTile(call: call_data[index]);
        },
      ),
    );
  }
}