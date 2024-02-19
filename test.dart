// import 'package:flutter/material.dart';

// class Product {
//   String img;
//   String name;
//   double price;

//   Product({required this.name, required this.price, required this.img});
// }

// class ProductPage extends StatefulWidget {
//   @override
//   _ProductPageState createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
//   List<Product> products = [
//     Product(name: 'منتج 1', price: 10.0, img: "amage/bb.png"),
//     Product(name: 'منتج 2', price: 15.0, img: ""),
//     Product(name: 'منتج 3', price: 20.0, img: ""),
//   ];

//   TextEditingController nameController = TextEditingController();
//   TextEditingController priceController = TextEditingController();
//   TextEditingController imgController = TextEditingController();

//   void addProduct() {
//     String name = nameController.text;
//     double price = double.parse(priceController.text);
//     String img = imgController.text;

//     Product newProduct = Product(name: name, price: price, img: img);

//     setState(() {
//       products.add(newProduct);
//     });

//     nameController.clear();
//     priceController.clear();
//     imgController.clear();
//   }

//   void deleteProduct(int index) {
//     setState(() {
//       products.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('قائمة المنتجات'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             child: ListTile(
//                leading: Image.network(
//                 products[index].img,
//                 width: 50,
//                 height: 50,
//               ),
//               title: Text(products[index].name),
//               subtitle: Text('السعر: ${products[index].price}'),
//               trailing: IconButton(
//                 icon: Icon(Icons.delete),
//                 onPressed: () {
//                   deleteProduct(index);
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text('إضافة منتج جديد'),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     TextField(
//                       controller: nameController,
//                       decoration: InputDecoration(labelText: 'اسم المنتج'),
//                     ),
//                     TextField(
//                       controller: priceController,
//                       decoration: InputDecoration(labelText: 'السعر'),
//                       keyboardType: TextInputType.number,
//                     ),
//                       TextField(
//                                   controller: imgController,
//                                   decoration: InputDecoration(labelText: 'رابط الصورة'),
//                                 ),
//                   ],
//                 ),
//                 actions: [
//                   TextButton(
//                     child: Text('إلغاء'),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   TextButton(
//                     child: Text('إضافة'),
//                     onPressed: () {
//                       addProduct();
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: ProductPage(),
//   ));
// }
