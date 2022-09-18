import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  const Expansion({Key? key}) : super(key: key);
static const double radius = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(color: Colors.black,width: 2.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  buildImage(),
                  buildText(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget buildImage(){
    return Image.network('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      fit: BoxFit.cover,
      width: double.infinity,
      height: 400.0,
    );
  }
  Widget buildText(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: const ExpansionTile(
        childrenPadding: EdgeInsets.all(16.0),
        title: Text('Sarah Pepperstone',
        style: TextStyle(fontSize: 24.0,
        fontWeight: FontWeight.bold,
        ),
        ),
        children: [
          Text('My name is Sarah and I am New York based Flutter developer.\n'
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.',

          style: TextStyle(
            fontSize: 18.0,
            height: 1.4,
          ),
          ),
        ],
      ),
    );
  }
}
