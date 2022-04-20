import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  final item = ['item1','item2','item3','item4','item5'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Item'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.black,width: 4.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              iconSize: 36,
              icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
              isExpanded: true,
              value: value,
                items: item.map(buildMenuItem).toList(),
              onChanged: (value){
                setState(() {
                  this.value=value;
                });
              },
            ),
          ),
        )
      ),
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item)=> DropdownMenuItem(
    value: item,
      child: Text(item,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ));
}
