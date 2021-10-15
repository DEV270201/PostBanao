import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
import 'package:my_navigation/models/post.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  //created a list of posts
  final List<Post> p = [
     Post(title: "Friendship",desc:"Across individuals of all ages, friendships form, evolve, and sometimes dissolve over time. The length and duration of the various phases of a friendship vary across individuals and circumstances.The formation phase of a friendship is the transition from strangers to acquaintances to friends. During this phase individuals engage in interactions to get to know each other and to forge the affective bond that characterizes a friendship.Although there are many forms of friendship, some of which may vary from place to place, certain characteristics are present in many types of such bonds. Such characteristics include choosing to be with one another, enjoying time spent together, and being able to engage in a positive and supportive role to one another.",id:1),
     Post(title: "Life", desc: "Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate.",id:2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0,),
              Expanded(child: ListView.builder(
                  itemCount: p.length,
                  itemBuilder: (context,index){
                    return PostDesign(p[index]);
                  }
              )
              )
            ],
          )
        ),
      ),
      //reusing the navigation bar
      bottomNavigationBar: BottomNavbar(0),
    );
  }
}

//it will return the design of the post
class PostDesign extends StatelessWidget {
  final Post pst;
  PostDesign(this.pst);

  @override
  Widget build(BuildContext context) {
    //gesture detector is used to detect a tap on the container.
    return GestureDetector(
      onTap: (){
        print("container");
        //pushing the route into the stack along with the data
        Navigator.pushNamed(context, "/home/posts", arguments: pst);
      },
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10.0)
        ),
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        // color: Colors.grey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Post : ${pst.id.toString()}"),
              Divider(height: 30.0,thickness: 3.0,),
              Text(pst.title,
              style : TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              )
              ),
            ],
          ),
      ),
    );
  }
}

