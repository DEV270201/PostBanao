import 'package:flutter/material.dart';
import '../components/bottomnavbar.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
      ),

      body: Container(
        child: Center(
          child: Text("Contact"),
        ),
      ),
      bottomNavigationBar: BottomNavbar(1),
    );
  }
}
