import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FormTextfieldValidation extends StatefulWidget {
  const FormTextfieldValidation({Key? key}) : super(key: key);

  @override
  State<FormTextfieldValidation> createState() => _FormTextfieldValidationState();
}

class _FormTextfieldValidationState extends State<FormTextfieldValidation> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 40.0,right: 40.0),
          child: Form(
            key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.04,),
                  Text('Here to Get',style: TextStyle(fontSize: 30.0),),
                  Text('Welcome !',style: TextStyle(fontSize: 30.0),),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                        {
                          return 'Enter correct name';
                        }
                      else
                        {
                          return null;
                        }
                    },
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your number',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value))
                      {
                        return 'Enter correct phone number';
                      }
                      else
                      {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-\.])+[\w]{2,4}+$').hasMatch(value))
                      {
                        return 'Enter correct email';
                      }
                      else
                      {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Signup',style: TextStyle(fontSize: 22.0),),
                      NeumorphicButton(
                        margin: EdgeInsets.only(top: 12.0),
                        onPressed: (){
                          if(formkey.currentState!.validate()){
                            //check ifform data are valid
                            //your processtask ahead if all data are valid
                            final snackbar = SnackBar(content: Text('Submit'),);
                            _scaffoldkey.currentState!.showSnackBar(snackbar);
                          }
                        },
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          depth: 4,
                        ),
                      )
                    ],
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
