import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Text('Search $value',
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
