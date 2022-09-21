import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SentMeassage extends StatefulWidget {
  @override
  State<SentMeassage> createState() => _SentMeassageState();
  String? SentText;
  String? SentTime;
  bool isRead;
  SentMeassage({
    required this.SentText,
    required this.SentTime,
    required this.isRead
  });
}

class _SentMeassageState extends State<SentMeassage> {
  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerRight,
    child: ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width -10,
    minWidth: 150),
    child: Card(elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    color: Color(0Xffdcf8c6),
    child: Stack(
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 6,right: 26,top: 5,bottom: 18),
          child: Text(widget.SentText!),
        ),
        Positioned(
          bottom: 4,
          right: 10,
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.only(left: 10),),
              Text(widget.SentTime!,),
              SizedBox(height: 2,
              width: 6,),
            
              Icon(Icons.done_all,
              
              color: widget.isRead? Colors.blue: Colors.grey,
              )
          
            ],
          ),
        )
      ],
    ),
    ),
    ),
    );
    
    
  }
}