import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsupp/widgets/recieve.dart';
import 'package:whatsupp/widgets/send.dart';

import '../models/user.dart';

class chatDetail extends StatefulWidget {
   chatDetail({Key? key, required this.details }) : super(key: key);
 User details; 
  @override
  State<chatDetail> createState() => _chatDetailState();
}

class _chatDetailState extends State<chatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
// profile page
        backgroundColor: Colors.teal,
        titleSpacing: 0,
        leadingWidth: 80,
        leading: Row(
          children: [
            GestureDetector(child: const Icon(Icons.arrow_back),onTap: () => Navigator.pop(context),),
            const SizedBox(
              width: 3,
            ),
            //IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
           const CircleAvatar(
              radius: 20,
              child: Text('Jjfvvhnf'),
              
            ),
          ],
        ),
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
              Text(widget.details.name.toString()),
            Text('last seen ${widget.details.update.toString()}' , style: TextStyle(fontSize: 15),),
            
          ],
        ),
        actions: [
        const  Icon(
            Icons.video_call_rounded),
         const   SizedBox(width: 10,),
       const Icon(Icons.call_end_rounded),
        PopupMenuButton(itemBuilder: (context) {
          return   
          [PopupMenuItem
          
          (child: 
         widget.details.group == true? Text('Group Info'):Text('View Contact')),
          PopupMenuItem(child: widget.details.group == true? Text('Group Media') : Text('Media,Links and docs')),
          PopupMenuItem(child: Text('Search')),
           PopupMenuItem(child: Text('Mute notification')),
           PopupMenuItem(child: Text('Wallpapper')),
            PopupMenuItem(child: Text('More')),
          ];
          
        },
        ),
        ],
        
      ),
      body: Container(
        width: 45,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          
          children: [
           ListView(
            children: [
              SentMeassage(SentText: 'hi', SentTime: '12:00pm',isRead: true),
              RecivedMeassage(RecivedText: 'hello', RecivedTime: '1:00pm'),
            ],
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
            children: [
              Flexible(child: TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey,
                  suffixIconColor: Colors.grey,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  hintText: 'Message',
                  prefixIcon: IconButton(
                    icon: Icon(Icons.emoji_emotions_outlined),
                  onPressed: ((){}),),
                  ),
                  ),
                  ),
            IconButton(onPressed: (){}, icon: Icon(Icons.attach_file),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.monetization_on),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),
            ),
            ],
          ),
          ),
        ],),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,
          image: NetworkImage('https://i.pinimg.com/600x315/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg'),),),
        
      ),
    );
  }
}