import 'package:flutter/material.dart';
import 'package:my_app/product.dart';
import 'package:my_app/verify_otp.dart';
// import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Verifycode extends StatefulWidget {
  const Verifycode({super.key});

  @override
  State<Verifycode> createState() => _VerifycodeState();
}

class _VerifycodeState extends State<Verifycode> {
  var code = '';

  final defaultpintheme = PinTheme(
    height: 70,
    width: 70,
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
  );
  final foucusedPinTheme = PinTheme(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
  );
  final sumbittedPinTheme = PinTheme(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "enter the Verify code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "WE JUST SEND YOU AVERIRICATION CODE VIA PHONE\N+967 774 026 839",
                style: TextStyle(fontSize: 18, color: Colors.pink.shade600),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Pinput(
                    defaultPinTheme: defaultpintheme,
                    focusedPinTheme: foucusedPinTheme,
                    submittedPinTheme: sumbittedPinTheme,
                    onChanged: (Value) {
                      code = Value;
                    },
                    showCursor:true,
                    onCompleted:(pin) => print(pin),
                    ),
              ),
              SizedBox(height: 35,),
              InkWell(
                onTap: () {Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ProductPage()));
              },
              child: Center(
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Center(
                    child: Text("Sumbit code",
                    style: TextStyle( color: Colors.white,
                    fontSize: 20,
                    ),
                    ),
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
