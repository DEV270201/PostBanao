import 'package:flutter/material.dart';
import 'package:my_navigation/components/bottomnavbar.dart';
import 'package:my_navigation/models/post.dart';
import 'package:my_navigation/components/AddPost.dart';
// Post(title: "Life", desc: "Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate.",id:2),
class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);
  //created a list of posts
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Post> p = [];

  void initState(){
    super.initState();
    setState(() {
      p.add(Post(title: "Life", desc: "Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate.",id:2),);
    });
  }

  void addUserPost(Post userPost){
    setState(() {
      p.add(userPost);
    });
  }

  void deleteUserPost(int id){
      print("post deleted");
      setState(() {
        p = p.where((post) => post.id != id).toList();
      });
  }

  void _addPost(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (_){
           return InkWell(
             child: PostMaker(addUserPost),

             // onTap: (){Navigator.pop(context);
           );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("My Posts"),
        // backgroundColor: Colors.red,
        // centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0,),
              p.length != 0 ?
              Expanded(child: ListView.builder(
                  itemCount: p.length,
                  itemBuilder: (context,index){
                    return PostDesign(p[index],index+1,deleteUserPost);
                  }
              )
              )
                  : 
              Image.asset("assets/NoPost.png",
                height: MediaQuery.of(context).size.height * 0.65,
              )
            ],
          )
        ),
      ),
      //for adding new posts
      floatingActionButton: FloatingActionButton(
        onPressed: (){print("hello");
        _addPost(context);
        },
        child: Icon(
          Icons.add_outlined,
        ),
        backgroundColor: Colors.red,
      ),
      //reusing the navigation bar
      bottomNavigationBar: BottomNavbar(0),
    );
  }
}

//it will return the design of the post
class PostDesign extends StatelessWidget {
  final Post pst;
  final int index;
  final Function deleteUserPost;
  PostDesign(this.pst,this.index,this.deleteUserPost);

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
        // height: auto,
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
              Text("Post : $index"),
              Divider(height: 30.0,thickness: 3.0,),
              Text(pst.title,
              style : TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              )
              ),
              OutlinedButton(onPressed: (){
                deleteUserPost(pst.id);},
                  child: Text("DELETE"),
              style: OutlinedButton.styleFrom(
                backgroundColor : Colors.red,
                primary: Colors.white,//changes the text of the button
                  side: BorderSide(
                      width: 1.0,
                      style: BorderStyle.solid
                  ),
              )),
            ],
          ),
      ),
    );
  }
}

