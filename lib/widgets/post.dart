import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {

  final int index;
  Size size = Size.zero;

  Post(this.index,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return CachedNetworkImage(
      imageUrl : 'https://picsum.photos/id/$index/200/200',
      imageBuilder : (BuildContext context, ImageProvider imageProvider){
        return AspectRatio(
            aspectRatio: 1,
            child : Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover)
              ),
            )
        );
      },
      placeholder: (BuildContext context, String url){
        return SizedBox(width:size.width, height: size.height, child :const Center(child:SizedBox(height: 60, width: 60,
            child : CircularProgressIndicator(
              backgroundColor: Colors.black87
              )
            )
          )
        );
      },
    );
  }
}