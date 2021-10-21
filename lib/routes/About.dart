import 'package:flutter/material.dart';
import '../components/bottomnavbar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text("About PostBanao"),
      ),

      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Text(
            "PostBanao is a mobile application which helps the user to make their own post. PostBanao is a mobile application which helps the user to make their own post. PostBanao is a mobile application which helps the user to make their own post. PostBanao is a mobile application which helps the user to make their own post.",
            style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic),
        ),
      ),
      bottomNavigationBar: BottomNavbar(1),
    );
  }
}
