import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_navigation/extra/welcome.dart';
import 'package:my_navigation/models/post.dart';
import 'package:my_navigation/pages/post_details.dart';
import 'package:my_navigation/routes/About.dart';
import 'package:my_navigation/routes/Contact.dart';
import 'package:my_navigation/routes/Home.dart';

class MyRoutes{
  //we will return the dynamic routes based on user input
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (_)=> Welcome());
      case "/home":
        return MaterialPageRoute(builder : (_)=> Home());
      case "/home/posts":
        //getting the data that passed from the home route
        var data = settings.arguments as Post; //specified the type of the data that is being received
        return MaterialPageRoute(builder : (_)=> PostDetails(data));
      case "/contact":
        return MaterialPageRoute(builder: (_)=> Contact());
      case "/about":
        return MaterialPageRoute(builder: (_)=> About());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
    }
  }
