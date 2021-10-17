import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  // void proceed(context){
  //   print("please proceed!");
  //   Navigator.pushNamed(context,'/home');
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      alignment: Alignment.center,
      color : Colors.red,
      child : Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To PostsBanao!!",
              style: TextStyle(
                color:Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: (){
                  print("hello");
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("Explore!"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,

                ),
            )
          ],
        ),
      ),
    );
  }
}
