// // import 'package:flutter/material.dart';

// // class Cart extends StatefulWidget {
// //   const Cart({super.key});

// //   @override
// //   State<Cart> createState() => _CartState();
// // }

// // class _CartState extends State<Cart> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //           child: Padding(
// //             padding: const EdgeInsets.all(10),
// //             child: SingleChildScrollView(
// //               child: Column(
// //                     children: [
// //               Row(
// //                 children: [
// //                   InkWell(
// //                     onTap: () {
// //                       Navigator.pop(context);
// //                     },
                    
// //                     child: Icon(
// //                       Icons.arrow_back,
// //                     ),
// //                   ),
// //                   SizedBox(width: 15,),
// //                   Text("your Cart",
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.bold,
// //                     fontSize: 20,
// //                   ),
// //                   ),
              
// //                   Text("2 item in your cart",
// //                   style: TextStyle(
// //                     fontSize: 17,
// //                     color: Colors.grey.shade600,
// //                   ),
// //                   ),
// //                   Spacer(),
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       color: Colors.grey.shade100,
// //                       border: Border.all(
// //                         color: Colors.blueAccent,

// //                       ),
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     child: Icon(
// //                       Icons.add,
// //                       color: Colors.blueAccent,
// //                     ),
// //                   ),
// //                   SizedBox(
// //                     width: 10,
// //                     ),
// //                   Text("add to cart",
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     color: Colors.blueAccent,

// //                   ),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 20,),
// //                     ],
// //                   ),
// //             ),
// //           )
// //           ),
// //     );
// //   }
// // }
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter/src/widgets/placeholder.dart';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage( title: "title")
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({ required this.title,}) :
//    super(key: key);

//   final String title;
  
//   @override
//    _MyHomePageState createState() => _MyHomePageState();
// }
//   @override



// class _MyHomePageState extends State<MyHomePage> {
//   List<Product> products = [
//     Product(
//       name: 'Product 1',
//       description: 'This is a product description.',
//       price: 100.0,
//       image: 'https://example.com/product1.jpg',
//     ),
//     Product(
//       name: 'Product 2',
//       description: 'This is a product description.',
//       price: 200.0,
//       image: 'https://example.com/product2.jpg',
//     ),
//     Product(
//       name: 'Product 3',
//       description: 'This is a product description.',
//       price: 300.0,
//       image: 'https://example.com/product3.jpg',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ProductCard(product: products[index],);
//         },
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     required Key key,
//     required this.product,
//   }) : super(key: key);

//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Image.network(product.image),
//           Text(product.name),
//           Text(product.description),
//           Text('\$${product.price}'),
//         ],
//       ),
//     );
//   }
// }

// class Product {
//   final String name;
//   final String description;
//   final double price;
//   final String image;

//   Product({
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.image,
//   });
// }

