import 'package:flutter/material.dart';

class TextFieldBorderWidget extends StatelessWidget {
  const TextFieldBorderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Text Field Border Widget'),
        ),
        body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            buildText('No Border'),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
            buildText('Underline'),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
            buildText('Outline Square'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            buildText('Outline Rounded'),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.black,width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(color: Colors.green,width: 3.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildText(final String text)=>
      Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
      );
}
