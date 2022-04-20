import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile $value',
          style: TextStyle(fontSize: 50.0,),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          value=value+1;
        });
      },
        child: Icon(Icons.add),),
    );
  }
}
