import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/post.dart';


class FeedScreen extends StatelessWidget{
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        leading: IconButton(
          onPressed: null, icon: Icon(CupertinoIcons.photo_camera_solid, color : Colors.black87),
        ),
        middle: Text(
          'instagram',
          style: TextStyle(
            fontFamily: 'VeganStyle', color : Colors.black87
          ),
        ),
        trailing: RightRow()
      ),

      body : ListView.builder(itemBuilder: feedListBuilder, itemCount: 30,)
    );
  }

  Widget feedListBuilder(BuildContext context, int index){
    return Post(index);
  }
}

class RightRow extends StatelessWidget {
  const RightRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        IconButton(
        onPressed: null,
        icon: ImageIcon(
          AssetImage('assets/images/actionbar_camera.png'),
          color : Colors.black87
          )
        ),
        IconButton(
            onPressed: null,
            icon: ImageIcon(
                AssetImage('assets/images/actionbar_camera.png'),
                color : Colors.black87
            )
        )
      ]
    );
  }
}