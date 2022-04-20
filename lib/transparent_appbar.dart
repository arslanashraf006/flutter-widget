import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Transparent AppBar', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: BackButton(color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.0))
        ),
       // backgroundColor: Colors.transparent,
        backgroundColor: Colors.white.withOpacity(0.2),
        elevation: 0.0,
      ),
      body: Image.network(
          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
      fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),

    );
  }
}
