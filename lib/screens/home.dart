import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home $value',
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
