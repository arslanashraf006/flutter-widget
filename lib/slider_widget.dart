import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(height.toString()),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                thumbColor: Colors.pinkAccent,
                activeTrackColor: Colors.white,
                overlayColor: Colors.pinkAccent.shade100,
                inactiveTrackColor: Colors.grey,

              ),
              child: Slider(
              value: height.toDouble(),
              onChanged: (value){
                setState(() {
                  height=value.round();
                });
              },
        min: 120.0,
        max: 220.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
