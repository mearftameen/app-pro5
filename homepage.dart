// import 'package:flutter/material.dart';

// import 'category_listing.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => HomepageState();
// }

// class HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 180,
//                     decoration:BoxDecoration(
//                       color: Colors.blueAccent,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(24),
//                         bottomRight: Radius.circular(24),
//                         ),
//                     ) ,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row (children: [
//                             CircleAvatar(radius: 25,
//                             backgroundImage: AssetImage(
//                               "assest/png/img profile.webp",
//                             ),
                            
//                             ),
//                             Spacer(),
//                             Icon(
//                               Icons.notifications,
//                               color: Colors.white,
//                             ),
//                             SizedBox(width: 15,
//                           ),
//                           Icon(
//                             Icons.shopping_bag,
//                             color: Colors.white,
//                           ),
//                           ],
//                           ),
//                           SizedBox(
//                             height: 25,
//                           ),
//                           Text("Hi, mero",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 22,
//                             color: Colors.white,
//                           ),
//                           ),
//                           Text("welcome to Medtech",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                           ),
//                           ],
//                           ),
//                     ),
//                   ),
//                    Padding(
//                      padding: const EdgeInsets.only(top:150),
//                      child: Container(
//                                    decoration: BoxDecoration(
//                                      color: Colors.grey.shade200,
//                                      borderRadius:BorderRadius.circular(14),
//                                      ),
//                                      child: Container(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextField(
//                           decoration: InputDecoration(hintText: "search",
//                           prefixIcon: Icon(Icons.search),
//                           border: InputBorder.none,
                          
//                           ),
//                         ),
//                       ),
//                      ),
//                      ),
//                    )
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text("Top categories",
//                 style:TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                 ),
//                 ),
//               ),
//               SizedBox(height: 15,
//               ),
//               SizedBox(height: 120,
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 primary: false,
//                 itemCount: home.length,
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: 
//               SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 1,
//                 mainAxisExtent: 80,
//                 ),
//                 itemBuilder:  (context,index){
//                  return Container(
//                   height: 45,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Column(children: [
//                     Container(
//                       decoration: BoxDecoration(color: home[index].color,
//                       shape: BoxShape.circle,
//                       ),
//                       child: Column(children: [Image.asset(home[index].image,
//                       height: 40,
//                       width: 40,
//                       ),
//                       ]
//                       ),
//                     ),
//                     SizedBox(height: 8,
//                     ),
//                     Center(child: Text(home[index].title,
//                     style: TextStyle(
//                       fontSize: 15,
//                     ),
                    
//                     ),
//                     )
//                   ]),
//                  );
//                 }
//                 ),
               
//                 ),
//                 SizedBox(height: 10,),
//                 Image.asset("",),
//                 SizedBox(height: 15,),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                      MaterialPageRoute(
//                       builder: (context)=> categorylisting(),
//                       ),
//                       );
        
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Beals of the Day",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                     ),
//                     Text("More",
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                       fontSize: 18,
//                     ),
//                     ),
//                     ],
//                   ),
//                 ),
//                 GridView.builder(
//                 shrinkWrap: true,
//                 primary: false,
//                 itemCount: medical.length,
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: 
//               SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisExtent: 250,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 ),
//                  itemBuilder: (BuildContext context, index) { 
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade100,
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                     child: Padding(padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         Image.asset(medical[index].image,),
//                         SizedBox(height: 10,),
//                         Text(medical[index].title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                         ),
//                         SizedBox(height: 8,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(medical[index].titles,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                           ),
//                        Container(
//                             width: 70,
//                           decoration: BoxDecoration(
//                             color: Colors.orange,
//                             borderRadius: BorderRadius.circular(18),
//                           ),
//                           child: Padding(padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [Icon(Icons.star,
//                             color: Colors.white,
//                             ),
//                             Text(
//                               "4.3",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                               ),
//                               )
//                             ],
//                           ),
//                           ),
//                           ),
//                           ],
//                         )
        
//                       ],
//                     ),
//                     ),
//                   );
//                   },
//                   ),
//                   SizedBox(height: 10,),
//                   Align(alignment: Alignment.centerLeft,
//                   child: Text(
//                     "featured Brands",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20
//                     ),
//                   ),),
//                   SizedBox(height: 15,
//                   ),
//                  SizedBox(height: 140,
//                  child: GridView.builder( 
//                   primary: false,
//                   shrinkWrap: true,
//                   itemCount: featured.length,
//                   scrollDirection: Axis.horizontal,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisExtent: 110,
//                   ),
                  
//                     itemBuilder: ( context, index) {
//                       return Column(
//                         children: [
//                           Container(
//                             height: 100,
//                             width: 150,
//                             decoration: BoxDecoration(
//                               color: Colors.grey.shade100,
//                               shape: BoxShape.circle,
//                             ),
//                             child: Padding(padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               children: [Center(
//                                 child: Image.asset(featured[index].iamge,
//                                 height: 80,
//                                 width: 110,
//                                 ),
                                
//                               )
//                               ],
//                             ),
//                             ),

//                           )
//                         ],
//                       );
//                     },
//                     ),
//                     ) ,

//               ],
//               ),
//         ),
//       ),
//     );
//   }
// }
// class HomeModels{
//   final String image;
// final String title;
// final Color color;

// HomeModels({
//   required this.image,
//   required this.title,
//   required this.color,
// });
// }
// List<HomeModels> home = [
//   HomeModels(
//   image:"" ,
//   title: "Dental",
//   color: Colors.pink,
// ),
//   HomeModels(
//   image: "",
//   title: "wellness",
//   color: Colors.green,
// ),
//   HomeModels(
//   image: "",
//   title: "Homeo",
//   color: Colors.orange,
// ),
//   HomeModels(
//   image: "",
//   title: "Eye care",
//   color: Colors.blue,
// ),
//   HomeModels(
//   image: "",
//   title: "skin & healthcare",
//   color: Colors.purple,
// ),
// ];
//  class Medical{
//    final String image;
//    final String title;
//    final String titles;
//   Medical({
//    required this.image,
//   required  this.title,
//   required  this.titles,
//  });
//  }
//  List<Medical> medical =[
//  Medical(
//   image: "",
//  title: "tghkjfhgktgkf",
//  titles: "\$150",
//  ),
//   Medical(
//     image: "",
//  title: "tghkjfhgktgkf",
//  titles: "\$150",
//  ),
//  ];
//  class Featured{
//   final String iamge;
//   final String title;
//   Featured({
//     required this.iamge,
//     required this.title,
//   });
//  }
//  List<Featured> featured = [
//   Featured(
//     iamge: "",
//   title: "kjgldkgldkf",
//   ),
//   Featured(iamge: "",
//   title: "kjgldkfgjlf"),

//   Featured(iamge: "",
//   title: "kjgldkfgjlf"),

//   Featured(iamge: "",
//   title: "kjgldkfgjlf"),

//  ];