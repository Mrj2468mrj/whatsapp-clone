import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecivedMeassage extends StatefulWidget {
  @override
  State<RecivedMeassage> createState() => _RecivedMeassageState();
  String? RecivedText;
  String? RecivedTime;
  RecivedMeassage({
    required this.RecivedText,
    required this.RecivedTime
  });
}

class _RecivedMeassageState extends State<RecivedMeassage> {
  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,
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
          child: Text(widget.RecivedText!),
        ),
        Positioned(
          bottom: 4,
          right: 10,
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.only(right: 10),),
              Text(widget.RecivedTime!,),
              SizedBox(height: 2,
              width: 6,),
              
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