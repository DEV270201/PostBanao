import 'package:flutter/material.dart';
// import 'extra/welcome.dart';
// import 'Routes/Home.dart';
// import 'Routes/Contact.dart';
// import 'Routes/About.dart';
import 'extra/router.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: MyRoutes.generateRoute,
      // routes : {
      //   "/" : (context)=> Welcome(),
      //   "/home" : (context)=> Home(),
      //   "/contact" : (context)=> Contact(),
      //   "/about" : (context)=> About()
      // }
    )
  );
}
