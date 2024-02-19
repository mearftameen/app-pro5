// import 'dart:ffi';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:my_app/onboarding.dart';
// import 'package:my_app/splash_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState()=> _SplashScreenState();
  
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    
    super.initState();
     Future.delayed(
      Duration(
        seconds: 3), (){
        Navigator.push(
          context as BuildContext, 
          MaterialPageRoute(
            builder: (context)=> Onboarding(),
         ) );
      }
      );
  }   
  @override
  Widget build (BuildContext context){
    return Scaffold(
    body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Medtech", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24 , color: Colors.white,
          ),)
        ],
      ),
    ),
    );
  }
}