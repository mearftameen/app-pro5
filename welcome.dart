import 'package:flutter/material.dart';
import 'package:my_app/welcome_back.dart';
// import 'package:my_app/welcome.dart';
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
          children: [
            Image.asset("amage/yy.jpg",),SizedBox(height: 20,
            ),
            Text("Welcome to Medtech",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,
            color: Colors.black,
            ),
            ),
            SizedBox(height: 15,),
             Text("Do you want some help wit your\nhealth to get better life?",
             style: TextStyle(fontSize: 18,
            color: Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Welcomeback())));
            },
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(14)
                ),child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("SIGN UO WITH EMAIL", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
                  color: Colors.white,
                  ),)
                ],),
              ),
            ),
            SizedBox(height: 15),
            // Container(
            //   height: 50,
            //  // decoration: BoxDecoration(color: Colors.white, 
            //   // borderRadius: BorderRadius.circular(14),
            //   // border: Border.all(color: Colors.grey),
            //   // ), 
            //   child: Row(
            //     children: [
            //       Image.asset("amage/faecbook.png",height: 45 , width: 80,
            //       ),
            //       Text("CONTINUE WITH GOOGLE", 
            //       style: TextStyle(fontWeight: FontWeight.bold,
            //       fontSize: 20,color: Colors.black
            //       ),)
            //     ],),
            // ),
            SizedBox(height: 20,
            ),Text("Login", 
            style: TextStyle(fontSize: 20,
            color: Colors.grey.shade600),
            )

          ],
           ),
        ),),
    );
  }
}
