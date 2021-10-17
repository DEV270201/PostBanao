import 'package:flutter/material.dart';
import '../components/bottomnavbar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
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
