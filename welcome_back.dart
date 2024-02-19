import 'package:flutter/material.dart';
import 'package:my_app/welcome.dart';

import 'createaccount.dart';
class Welcomeback extends StatefulWidget {
  const Welcomeback({super.key});

  @override
  State<Welcomeback> createState() => _WelcomebackState();
}

class _WelcomebackState extends State<Welcomeback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
       Padding(
         padding: const EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back,),),
              SizedBox(height: 25,
              ),Text("Welcome back!",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24,
              ),
              ),
              SizedBox(height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                    hintText: "Username or email",
                    prefixIcon: Icon(Icons.person,),
                  ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Container(
                decoration: BoxDecoration(color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "password",
                    prefixIcon: Icon(Icons.lock,),
                    suffixIcon: Text("Forgot",
                    style: TextStyle(fontSize: 16,
                    color:Colors.grey.shade600,),
                    ),
                  ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",
                  style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  ),),
                ]),
              ),
              SizedBox(height: 20,),
              InkWell(onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> createaccount()));
              },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: "don't have an account ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                      children: [
                        TextSpan(
                          text: "Create Account",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              )
              
          ],),
       ),),
    );
  }
}