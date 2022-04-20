import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Center(
        child: Text('History $value',
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
