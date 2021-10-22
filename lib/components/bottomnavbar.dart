// import 'package:flutter/material.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
//
// class BottomNavbar extends StatefulWidget {
//   const BottomNavbar({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavbarState createState() => _BottomNavbarState();
// }
//
// class _BottomNavbarState extends State<BottomNavbar> {
//   int _currentIndex=1;
//
//   // List<String> routes = [
//   //   "Home",
//   //   "Contacts",
//   //   "About"
//   // ];
//
//   void _changePage(index){
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body : Center(
//         child: Text(
//           routes[_currentIndex]
//         ),
//       ),
//       bottomNavigationBar: BottomNavyBar(
//         iconSize: 30.0,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         containerHeight: 65,
//         selectedIndex: _currentIndex,
//         onItemSelected: _changePage,
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//             icon : Icon(
//               Icons.perm_media_outlined
//             ),
//             title: Text("Posts"),
//             activeColor: Colors.red,
//             inactiveColor: Colors.black
//           ),
//           BottomNavyBarItem(
//               icon : Icon(
//                   Icons.portrait_outlined
//               ),
//               title: Text("Contacts"),
//               activeColor: Colors.red,
//               inactiveColor: Colors.black
//           ),
//           BottomNavyBarItem(
//               icon : Icon(
//                   Icons.android_outlined
//               ),
//               title: Text("About Us"),
//               activeColor: Colors.red,
//               inactiveColor: Colors.black
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;
  const BottomNavbar(this.currentIndex);

  @override
  _BottomNavbarState createState() => _BottomNavbarState(currentIndex);
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex;
  _BottomNavbarState(this.currentIndex);

  List<String> routes = [
    "/home",
    "/about"
  ];

  void _changePage(index){
    if(index != currentIndex){
      Navigator.pushNamed(context, routes[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
        iconSize: 30.0,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        containerHeight: 65,
        selectedIndex: currentIndex,
        onItemSelected: _changePage,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon : Icon(
                  Icons.perm_media_outlined
              ),
              title: Text("Posts"),
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.black
          ),
          // BottomNavyBarItem(
          //     icon : Icon(
          //         Icons.portrait_outlined
          //     ),
          //     title: Text("Contacts"),
          //     activeColor: Colors.red,
          //     inactiveColor: Colors.black
          // ),
          BottomNavyBarItem(
              icon : Icon(
                  Icons.android_outlined
              ),
              title: Text("About Us"),
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.black
          ),
        ],
      );
  }
}
