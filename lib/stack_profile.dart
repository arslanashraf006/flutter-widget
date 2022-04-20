import 'package:flutter/material.dart';

class StackProfile extends StatelessWidget {
  const StackProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildProfile(),
          ],
        ),
      ),
    );
  }
  Widget buildProfile(){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(color: Colors.orange,height: 120.0,),
        Positioned(
          bottom: -20,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 4.0,
                  ),
                ],
                image: DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
