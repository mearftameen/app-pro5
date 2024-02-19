import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class verifyotp extends StatefulWidget {
  const verifyotp({super.key});

  @override
  State<verifyotp> createState() => _verifyotpState();
}

class _verifyotpState extends State<verifyotp> {
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Image.asset("amage/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text("Phon Number Verified",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 22,
                ),
                ),  
              ),
              SizedBox(height: 15,),
              Center(
                child: Text(
                  "congretulation your phon \nnumber has been verifide.you can \nstart using app",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButtonBar(),
                        ),
                        );
                  },
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(28),
                    ), 
                    child: Center(child: Text("Continue",
                    style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                    ),
                    ),
                    ),
                   ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
