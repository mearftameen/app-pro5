import 'package:flutter/material.dart';

class categorylisting extends StatefulWidget {
  const categorylisting({super.key});

  @override
  State<categorylisting> createState() => _categorylistingState();
}

class _categorylistingState extends State<categorylisting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Diabet care",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(""),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Diabetic Diet",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: diabetic.length,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 110,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              diabetic[index].image,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                diabetic[index].text,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "all products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => protectdetail(
                          //       image: sell[index].image,
                          //       text: sell[index].text,
                          //     ),
                          //   ),
                          // );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Column(
                                    children: [Image.asset(sell[index].image,
                                    height: 100,
                                    width: 150,
                                    ),],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(sell[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ), 
                                ),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Padding(padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.star,
                                      color: Colors.white,
                                      ),
                                      Text("4.3",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
                                      ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Diabetic {
  final String image;
  final String text;
  Diabetic({
    required this.image,
    required this.text,
  });
}

List<Diabetic> diabetic = [
  Diabetic(
    image: "",
    text: "sugar \nSubstitute",
  ),
  Diabetic(
    image: "",
    text: "sugar \nSubstitute",
  ),
  Diabetic(
    image: "",
    text: "sugar \nSubstitute",
  ),
];

class Sell {
  final String image;
  final String title;
  final String text;
  Sell({
    required this.image,
    required this.title,
    required this.text,
  });
}

List<Sell> sell = [
  Sell(
    image: "",
    title: "",
    text: "",
  ),
  Sell(
    image: "",
    title: "",
    text: "",
  ),
  Sell(
    image: "",
    title: "",
    text: "",
  ),
  Sell(
    image: "",
    title: "",
    text: "",
  ),
];
