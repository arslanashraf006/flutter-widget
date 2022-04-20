import 'package:flutter/material.dart';

class StackImages extends StatelessWidget {
  const StackImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: buildImages(),
          )
        ],
      ),
    );
  }
  Widget buildImages(){
    final urlImage1='https://images.unsplash.com/photo-1646173061702-3ccdffbca868?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';
    final urlImage2='https://images.unsplash.com/photo-1647120099603-4274e65d2905?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80';
    final urlImage3='https://images.unsplash.com/photo-1646858848686-144376604411?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80';

    return Stack(
      children: [
        buildImage(urlImage: urlImage1,
        margin: EdgeInsets.symmetric(horizontal: 40.0).copyWith(top: 0)),
        buildImage(urlImage: urlImage2,
            margin: EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 60)),
        buildImage(urlImage: urlImage3,
            margin: EdgeInsets.symmetric().copyWith(top: 120)),
      ],
    );
  }
  Widget buildImage({
  required String urlImage,
  required EdgeInsets margin,})
  {
    return Container(
      margin: margin,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.25),
                  BlendMode.darken),
                image: NetworkImage(urlImage),
            fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
