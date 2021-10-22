import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
            height: MediaQuery.of(context).size.height,
            width : MediaQuery.of(context).size.width * 0.9,
            color: Colors.red[600],
    ),
    ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment(0.0,0.4),
            child: Text(
              "Welcome To PostsBanao!!",
              style: TextStyle(
                color:Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        // SizedBox(height: 10.0,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment(0.0,0.6),
            child: ElevatedButton(
              onPressed: (){
                print("hello");
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text("Explore!"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment(-0.6,-0.7),
            child: ClipRRect(
                child: Image.asset("assets/Icon.png"),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ],
    );
  }
}

//extend to custom clipper class
class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path = new Path();
    path.moveTo(0,size.height/2);
    path.lineTo(0, size.height-50);
    path.quadraticBezierTo(0, size.height, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height-450);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return false;
  }
}