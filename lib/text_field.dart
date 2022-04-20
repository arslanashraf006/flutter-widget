import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldProperty extends StatefulWidget {
  const TextfieldProperty({Key? key}) : super(key: key);

  @override
  State<TextfieldProperty> createState() => _TextfieldPropertyState();
}

class _TextfieldPropertyState extends State<TextfieldProperty> {
  final controller = TextEditingController();
  final numberController =TextEditingController();
  String password='';
  bool isPasswordVisible=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('TextField'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32.0),
          children: [
            buildEmail(),
            SizedBox(height: 24.0,),
            buildPassword(),
            SizedBox(height: 24.0,),
            buildNumber(),
            SizedBox(height: 24.0,),
            ElevatedButton(onPressed: (){
              print('Email: ${controller.text}');
              print('Password: $password');
              print('Number: ${numberController.text}');
            }, child: Text('Submit',style: TextStyle(fontSize: 30.0),),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildEmail() => TextField(
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: controller.text.isEmpty
        ?Container(width: 0,)
        :IconButton(
        icon: Icon(Icons.close),
        onPressed: (){
          controller.clear();
        },
      ),
      //enabled: false,
      prefixIcon: Icon(Icons.email),
      //icon: Icon(Icons.email),
      hintText: 'name@gmail.com',
      labelText: 'Email',
      border: OutlineInputBorder(),
    ),
    //readOnly: true,

    autofocus: true,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.done,
  );

  Widget buildPassword() => TextField(
    onChanged: (value)=>setState(() {
      this.password=value;
    }),
    onSubmitted: (value)=>setState(() {
      this.password=value;
    }),
    obscureText: isPasswordVisible,
    decoration: InputDecoration(
      hintText: 'Your Password',
      labelText: 'Password',
      border: OutlineInputBorder(),
      errorText: 'wrong password',
      suffixIcon: IconButton(onPressed: (){
        setState(() {
          isPasswordVisible=!isPasswordVisible;
        });
      },
        icon: isPasswordVisible
          ? Icon(Icons.visibility_off)
          : Icon(Icons.visibility),
      ),
    ),
  );

  Widget buildNumber() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Number',style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 8.0,),
      TextField(
        controller: numberController,
        decoration: InputDecoration(
          hintText: 'Enter Number...',
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.black,
        ),
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
      ),
    ],
  );
}

