import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/history.dart';
import 'package:flutter_widgets/screens/home.dart';
import 'package:flutter_widgets/screens/profile.dart';
import 'package:flutter_widgets/screens/search.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      //endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Navigation drawer & Sidebar Menu'),
      ),
      body: Builder(
        builder: (context)=> Center(
          child: ElevatedButton(onPressed: (){
            Scaffold.of(context).openDrawer();
            // Scaffold.of(context).openEndDrawer();
          },
          child: Text('Open Drawer'),),
        ),
      ),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
final padding=EdgeInsets.symmetric(horizontal: 20.0);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: ListView(
          padding: padding,
          children: [
            SizedBox(height: 40.0,),
            buildMenuItem(text: 'Profile', icon: Icons.person_pin,
            onClicked: (){
              selectedItem(context, 0);
            }),
            SizedBox(height: 16.0,),
            buildMenuItem(text: 'Home', icon: Icons.home,
                onClicked: (){
                  selectedItem(context, 1);
                }),
            SizedBox(height: 16.0,),
            buildMenuItem(text: 'Search', icon: Icons.search,
                onClicked: (){
                  selectedItem(context, 2);
                }),
            SizedBox(height: 16.0,),
            buildMenuItem(text: 'History', icon: Icons.history,
                onClicked: (){
                  selectedItem(context, 3);
                }),
            SizedBox(height: 24.0,),
            Divider(color: Colors.white70,),
            SizedBox(height: 24.0,),
            buildMenuItem(text: 'Plugins', icon: Icons.account_tree_outlined),
            SizedBox(height: 16.0,),
            buildMenuItem(text: 'Notifications', icon: Icons.notifications_outlined),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked}){
    final color=Colors.white;
    final hovercolor=Colors.white70;
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(text,style: TextStyle(color: color),),
      hoverColor: hovercolor,
      onTap: onClicked,
    );
  }
 void selectedItem(BuildContext context,int index){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ProfilePage();
        }));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Home();
        }));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SearchPage();
        }));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return HistoryPage();
        }));
        break;
    }
 }
}