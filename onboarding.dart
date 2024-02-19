// import 'dart:ffi';
import 'package:my_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:my_app/splash_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              CreatePage(
                  image: "amage/ss.png",
                  title: "View and buy \nMedicine online",
                  titels:
                      "Ethiam molsis metus sun prsus \nfabiscious solicatdium.plentisine \nsaggiustius mi, integgar",
                  color: Colors.white,
                  textcolor: Colors.black),
              CreatePage(
                  image: "amage/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg",
                  title: "View and buy \nMedicine online",
                  titels:
                      "Ethiam molsis metus sun prsus \nfabiscious solicatdium.plentisine \nsaggiustius mi, integgar",
                  color: Colors.white,
                  textcolor: Colors.black),
              CreatePage(
                  image: "amage/dd.jpg",
                  title: "View and buy \nMedicine online",
                  titels:
                      "Ethiam molsis metus sun prsus \nfabiscious solicatdium.plentisine \nsaggiustius mi, integgar",
                  color: Colors.white,
                  textcolor: Colors.black),
            ],
          ),
          Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _buildIndicator(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Welcome(),
                            ),
                          );
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (currentIndex == 0) {
                            _pageController.jumpToPage(1);
                          } else if (currentIndex == 1) {
                            _pageController.jumpToPage(2);
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Welcome(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Next",
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueAccent),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      )),
    );
  }

  Widget _activeindicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 40 : 10,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget _inActiveindicator(bool isInActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10.0,
      width: isInActive ? 40 : 10,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_activeindicator(true));
      } else {
        indicators.add(_inActiveindicator(false));
      }
    }
    return indicators;
  }
}

class CreatePage extends StatelessWidget {
  final String image;
  final String title;
  final String titels;
  final Color color;
  final Color textcolor;
  const CreatePage(
      {super.key,
      required this.image,
      required this.title,
      required this.titels,
      required this.color,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Image.asset(  image,
          height: 350,
          fit: BoxFit.cover,),
          
        SizedBox(
          height: 20,),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  titels,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
            ),
      ],
    );
  }
}
