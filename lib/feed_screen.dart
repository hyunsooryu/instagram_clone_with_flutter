import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget{
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: null, icon: Icon(CupertinoIcons.photo_camera_solid, color : Colors.black87),
        ),
        middle: Text(
          'instagram',
          style: TextStyle(
            fontFamily: 'VeganStyle', color : Colors.black87
          ),
        )
      ),

      body : ListView.builder(itemBuilder: (BuildContext context, int index){
        return Container(
          color : Colors.accents[index % Colors.accents.length],
          height : 100,
        );
      }, itemCount: 30,)
    );
  }
}