import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
final numbers= List.generate(100, (index) => '$index');
final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('GridView'),
      actions: [
        IconButton(onPressed: (){
          const value = 0.0;
          controller.jumpTo(value);
        }, icon: const Icon(Icons.arrow_upward)),
        IconButton(onPressed: (){
          final value = controller.position.maxScrollExtent;
          controller.jumpTo(value);
        }, icon: const Icon(Icons.arrow_downward)),
      ],
      ),
      body: buildGridView(),
    );
  }
  Widget buildGridView() => GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    mainAxisSpacing: 2.0,
    crossAxisSpacing: 2.0,
    crossAxisCount: 2,
    //childAspectRatio: 1/3,
  ),
      controller: controller,
      padding: const EdgeInsets.all(8.0),
      itemCount: numbers.length,
      itemBuilder: (context,index){
    final item = numbers[index];
    return buildNumber(item);
  });
  Widget buildNumber(String number) => Container(
    color: Colors.orange,
    child: GridTile(
        header: Text('Header $number',textAlign: TextAlign.center,),
        child: Center(
      child: Text(number,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 25.0,
        fontWeight: FontWeight.bold),),
    ),
    footer: Text('Footer $number',textAlign: TextAlign.center,),
    ),
  );
}
