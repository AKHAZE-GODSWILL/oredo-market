import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oredo_market_enumeration/firstPage.dart';

class LoginPage extends StatefulWidget{
  LoginPage({Key? key}):super(key:key);

  State<LoginPage> createState ()=> _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  int counter = 1;
  final fullNameController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: null,
        title: Text("Login", style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // First Name
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: TextStyle(fontSize: 12),),
                        SizedBox(height: 5,),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: Color(0XFFE5E7EB)
                            )
                          ),
                          child: TextFormField(
                            // focusNode: textNode,
                            onChanged: (value){
                          setState(() {
                            
                          });
                        },
                            keyboardType: TextInputType.text,
                            controller: fullNameController,
                            decoration: InputDecoration(
                              focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide.none, // Remove the border when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none, // Remove the border when enabled
                          ),
                              hintText: "email@gmail.com",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30,),
              
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => FirstPage()
                            ));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.85,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(200)
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14),),
                            ),
                          ),
                        ),
                
            ],
          ),
        ),
      ),
    );
  }
}