import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:my_app/verify_code.dart';
import 'package:my_app/welcome.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Create your Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Eric Hoftman",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: "mobile number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "password",
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verifycode(),
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
                      child: Center(
                        child: Text(
                          "creat Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcome()));
                  },
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an account",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey.shade100,
                        ),
                        children: [
                          TextSpan(
                            text: "login?",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
