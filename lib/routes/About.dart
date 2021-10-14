import 'package:flutter/material.dart';
import 'bottomnavbar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kanteen"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Text("About"),
        ),
      ),
      bottomNavigationBar: BottomNavbar(2),
    );
  }
}
