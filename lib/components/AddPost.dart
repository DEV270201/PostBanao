import 'package:flutter/material.dart';
import 'package:my_navigation/models/post.dart';
import 'dart:math';

class PostMaker extends StatefulWidget {
  final Function addUserPost;
  PostMaker(this.addUserPost);

  @override
  _PostMakerState createState() => _PostMakerState();
}

class _PostMakerState extends State<PostMaker> {
  TextEditingController _title = TextEditingController();
  TextEditingController _desc = TextEditingController();
  bool test=false;

  void _addMyPost(BuildContext context){
    print("post added");
    if(_title.text.trim() == "" || _desc.text.trim() == ""){
      setState(() {
        test=true;
      });
      return;
    }
    int generatedID = new Random().nextInt(999999);
    Post temp = Post(title: _title.text,desc: _desc.text,id:generatedID);
    widget.addUserPost(temp);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextField(
            style: TextStyle(color: Colors.white),
            controller: _title,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Post Title",
              labelStyle: TextStyle( fontWeight: FontWeight.w300, fontStyle: FontStyle.italic, color: Colors.white),
              errorText: test ? "Invalid Input!!" : null,
              errorStyle: TextStyle(color: Colors.black),
              focusedErrorBorder: OutlineInputBorder(
                //now if you want to change the color of the border than you should use borderside
                borderSide: BorderSide(
                    color: Colors.white,
                    style : BorderStyle.solid,
                    width : 1.0
                ),
                borderRadius: BorderRadius.circular(15.0),

              ),
              // errorStyle: TextStyle(),
              enabledBorder: OutlineInputBorder(
                //now if you want to change the color of the border than you should use borderside
                borderSide: BorderSide(
                    color: Colors.white,
                    style : BorderStyle.solid,
                    width : 1.0
                ),
                borderRadius: BorderRadius.circular(15.0),

              ),

                focusedBorder: OutlineInputBorder(
                  //now if you want to change the color of the border than you should use borderside
                  borderSide: BorderSide(
                      color: Colors.white,
                      style : BorderStyle.solid,
                      width : 1.0
                  ),
                  borderRadius: BorderRadius.circular(15.0),

                ),
              ),
            ),
          SizedBox(height: 15.0,),
          TextField(
            style: TextStyle(color: Colors.white),
            controller: _desc,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Post Description",
              labelStyle: TextStyle( fontWeight: FontWeight.w300, fontStyle: FontStyle.italic, color: Colors.white),
              errorText: test ? "Invalid Input!!" : null,
              errorStyle: TextStyle(color: Colors.black),
              focusedErrorBorder: OutlineInputBorder(
                //now if you want to change the color of the border than you should use borderside
                borderSide: BorderSide(
                    color: Colors.white,
                    style : BorderStyle.solid,
                    width : 1.0
                ),
                borderRadius: BorderRadius.circular(15.0),

              ),
              enabledBorder: OutlineInputBorder(
                //now if you want to change the color of the border than you should use borderside
                borderSide: BorderSide(
                    color: Colors.white,
                    style : BorderStyle.solid,
                    width : 1.0
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
                focusedBorder: OutlineInputBorder(
                  //now if you want to change the color of the border than you should use borderside
                  borderSide: BorderSide(
                      color: Colors.white,
                      style : BorderStyle.solid,
                      width : 1.0
                  ),
                  borderRadius: BorderRadius.circular(15.0),

                ),
            ),
          ),
          SizedBox(height: 15.0,),
          OutlinedButton(
            onPressed: (){_addMyPost(context);},
            child: Text("Add Post",
            style: TextStyle(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              // primary: Colors.re, //changes the text of the button
              side: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                  style: BorderStyle.solid
              ),
            ),
          ),
        ],
      ),
    );
  }
}
