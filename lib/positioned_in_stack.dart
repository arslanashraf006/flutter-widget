import 'package:flutter/material.dart';

class PositionedinStack extends StatelessWidget {
  const PositionedinStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.topRight,
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Positioned(
                bottom: -20,
                right: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
