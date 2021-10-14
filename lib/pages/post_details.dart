import 'package:flutter/material.dart';
import 'package:my_navigation/models/post.dart';

class PostDetails extends StatelessWidget {
  final Post info;
  PostDetails(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(info.title),
            SizedBox(height: 15.0,),
            Text(info.desc)
          ],
        ),
      ),
    );
  }
}
