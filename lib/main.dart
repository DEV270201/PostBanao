import 'package:flutter/material.dart';
// import 'extra/welcome.dart';
// import 'Routes/Home.dart';
// import 'Routes/Contact.dart';
// import 'Routes/About.dart';
import 'extra/router.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: MyRoutes.generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.ubuntuTextTheme(),
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.red,
          centerTitle: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red
        ),
      ),
      // routes : {
      //   "/" : (context)=> Welcome(),
      //   "/home" : (context)=> Home(),
      //   "/contact" : (context)=> Contact(),
      //   "/about" : (context)=> About()
      // }
    )
  );
}
