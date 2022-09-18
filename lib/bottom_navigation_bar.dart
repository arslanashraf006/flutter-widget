import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/history.dart';
import 'package:flutter_widgets/screens/home.dart';
import 'package:flutter_widgets/screens/profile.dart';
import 'package:flutter_widgets/screens/search.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentindex=0;
  final screens=[
    Home(),
    SearchPage(),
    HistoryPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: screens,
      ),

      //screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40.0,
        // selectedFontSize: 25.0,
        // unselectedFontSize: 16.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index){
            setState(() {
              currentindex=index;
            });
          },
          items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
         // backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          // backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'History',
          //  backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          // backgroundColor: Colors.blue
        ),
      ]),
      // floatingActionButton: FloatingActionButton.large(
      //   backgroundColor: Colors.red.shade800,
      //   onPressed: (){},
      //   child: Icon(Icons.shopping_bag),),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 50.0,
      //   shape: CircularNotchedRectangle(),
      //   child: Container(
      //     height: 100.0,
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Icon(Icons.home,size: 40.0,),
      //           Icon(Icons.search,size: 40.0,),
      //           SizedBox.shrink(),
      //           Icon(Icons.history,size: 40.0,),
      //           Icon(Icons.person,size: 40.0,),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
