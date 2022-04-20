import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/screens/history.dart';
import 'package:flutter_widgets/screens/home.dart';
import 'package:flutter_widgets/screens/profile.dart';
import 'package:flutter_widgets/screens/search.dart';

class TopAppBar extends StatefulWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
          onPressed: (){
                print('Hello');
          },
          ),
          actions: [
            IconButton(onPressed: (){

            },
              icon: Icon(Icons.notifications_none),
            ),
            IconButton(onPressed: (){

            },
              icon: Icon(Icons.search),
            ),
          ],
          //backgroundColor: Colors.orange,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple,Colors.red],
              begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            )
          ),
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              tabs: [
                Tab(icon: Icon(Icons.home),
                text: 'Home',
                ),
                Tab(icon: Icon(Icons.star),
                  text: 'Star',
                ),
                Tab(icon: Icon(Icons.face),
                  text: 'Face',
                ),
                Tab(icon: Icon(Icons.settings),
                  text: 'Setting',
                ),
              ]),
          elevation: 20.0,
          titleSpacing: 0,
        ),
        body: TabBarView(children: [
          Home(),
          HistoryPage(),
          ProfilePage(),
          SearchPage(),
        ]),
      ),
    );
  }
}