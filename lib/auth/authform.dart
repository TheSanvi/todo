import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {


  final _formkey = GlobalKey<FormState>();
   var _email = "";
  var _password = "";
  var _username = "";
  bool isloginPage = false;



  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height ,
      width:MediaQuery.of(context).size.width ,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Form(
              key: _formkey,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TextFormField(
                keyboardType:TextInputType.emailAddress ,
                key: ValueKey("username"),
                validator: (value){
                  if(value!.isEmpty){
                    return "Incorrect Username" ;
                  }
                  return null;
                },
                onSaved: (value){
                  _email = value!;
                },

                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(),
                    ),
                    labelText: "Enter Username",
                    labelStyle: GoogleFonts.roboto()
                ),
              ),
                TextFormField(
                  keyboardType:TextInputType.emailAddress ,
                  key: ValueKey("username"),
                  validator: (value){
                    if(value!.isEmpty|| !value.contains('@')){
                      return "Incorrect Email" ;
                    }
                    return null;
                  },
                  onSaved: (value){
                    _email = value!;
                  },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(),
                    ),
                    labelText: "Enter Email",
                    labelStyle: GoogleFonts.roboto()
                  ),
                ),
                TextFormField(
                  keyboardType:TextInputType.emailAddress ,
                  key: ValueKey("password"),
                  validator: (value){
                    if(value!.isEmpty|| !value.contains('@')){
                      return "Incorrect password" ;
                    }
                    return null;
                  },
                  onSaved: (value){
                    _password = value!;
                  },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(),
                    ),
                    labelText: "Enter Password",
                    labelStyle: GoogleFonts.roboto()
                  ),
                )


              ],),
            ),
          )
        ],
      ),
    );
  }
}
