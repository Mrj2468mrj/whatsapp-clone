import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsupp/models/user.dart';
import 'package:whatsupp/screen/chat_detailsscr.dart';

class Chattile extends StatefulWidget {
   Chattile({required this.data });
 User data;
  @override
  State<Chattile> createState() => _ChattileState();
}

class _ChattileState extends State<Chattile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => chatDetail(details: widget.data,),)),
      child: ListTile(
        title: Text(widget.data.name.toString()),
        subtitle: Row(
          children: [
            Icon(Icons.done_all,
            color: Colors.blue,),
            SizedBox(
              width: 20,
            ),
          ]),
          trailing: Text(widget.data.update!),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            widget.data.avatar == ""? 
            widget.data.group == true? 'https://lh3.googleusercontent.com/ABlX4ekWIQimPjZ1HlsMLYXibPo2xiWnZ2iny1clXQm2IQTcU2RG0-4S1srWsBQmGAo':
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPp7AelDxUJQ_t928VVlyIqM4sAMLIOsHyWkVgVRPzvFaUuJkNZG6U7DV8oYjIwpwzVKWwEGOFqQ_8jBTwiz8iDrR0GlQUVom65RMzoaLrYvNhVbwcFdgo2glP2lgp076Dvl6oNjrOuQp5oQstI1SCbVXITSPofI12AdM-KaB0rQBPAyRR5qpE-z8hDg/s16000/blank-profile-picture-hd-images-photo-5.JPG':
            widget.data.avatar.toString(),),
            radius: 20,
         ),
        
      ),
    );
  }
}