import 'package:flutter/material.dart';
import 'package:my_navigation/models/post.dart';

class PostDetails extends StatelessWidget {
  final Post info;
  //getting the post details in order to display the contents
  PostDetails(this.info);

  @override
  Widget build(BuildContext context) {
    //singleChildScrollView is used since the length of the post can vary from user to user so inorder to prevent it from overflowing
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Detail"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          // height:double.infinity,
          color: Colors.amber,
          // margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text(info.title,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic
                  )
                  ),
                ),
                SizedBox(height: 15.0,),
                Divider(thickness: 6.0,),
                SizedBox(height: 25.0,),
                Text(info.desc,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        decoration: TextDecoration.none
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
