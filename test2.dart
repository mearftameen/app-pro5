// import 'package:flutter/material.dart';

// class Product {
//   String name;
//   double price;
//   String image;

//   Product({required this.name, required this.price, required this.image});
// }

// class ProductPage extends StatefulWidget {
//   @override
//   _ProductPageState createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
//   List<Product> products = [
//     Product(
//         name: 'منتج 1',
//         price: 10.0,
//         image:
//             'https://example.com/images/product1.jpg'), // استبدل الرابط برابط صورة المنتج الفعلي
//     Product(
//         name: 'منتج 2',
//         price: 15.0,
//         image:
//             'https://example.com/images/product2.jpg'), // استبدل الرابط برابط صورة المنتج الفعلي
//     Product(
//         name: 'منتج 3',
//         price: 20.0,
//         image:
//             'https://example.com/images/product3.jpg'), // استبدل الرابط برابط صورة المنتج الفعلي
//   ];

//   TextEditingController nameController = TextEditingController();
//   TextEditingController priceController = TextEditingController();
//   TextEditingController imageController = TextEditingController();

//   void addProduct() {
//     String name = nameController.text;
//     double price = double.parse(priceController.text);
//     String image = imageController.text;

//     Product newProduct = Product(name: name, price: price, image: image);

//     setState(() {
//       products.add(newProduct);
//     });

//     nameController.clear();
//     priceController.clear();
//     imageController.clear();
//   }

//   void editProduct(int index) {
//     String name = nameController.text;
//     double price = double.parse(priceController.text);
//     String image = imageController.text;

//     Product editedProduct = Product(name: name, price: price, image: image);

//     setState(() {
//       products[index] = editedProduct;
//     });

//     nameController.clear();
//     priceController.clear();
//     imageController.clear();
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
//               leading: Image.network(
//                 products[index].image,
//                 width: 50,
//                 height: 50,
//               ),
//               title: Text(products[index].name),
//               subtitle: Text('السعر: ${products[index].price}'),
//               trailing: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.edit),
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           nameController.text = products[index].name;
//                           priceController.text = products[index].price.toString();
//                           imageController.text = products[index].image;

//                           return AlertDialog(
//                             title: Text('تعديل المنتج'),
//                             content: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 TextField(
//                                   controller: nameController,
//                                   decoration: InputDecoration(labelText: 'اسم المنتج'),
//                                 ),
//                                 TextField(
//                                   controller: priceController,
//                                   decoration: InputDecoration(labelText: 'السعر'),
//                                   keyboardType: TextInputType.number,
//                                 ),
//                                 TextField(
//                                   controller: imageController,
//                                   decoration: InputDecoration(labelText: 'رابط الصورة'),
//                                 ),
//                               ],
//                             ),
//                             actions: [
//                              TextButton(
//                                child: Text('إلغاء'),
//                                     onPressed: () {
//                                    Navigator.of(context).pop();
//                                 },
//                               ),
//                               TextButton(
//                                 child: Text('حفظ'),
//                                 onPressed: () {
//                                   editProduct(index);
//                                   Navigator.of(context).pop();
//                                 },
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: Text('حذف المنتج'),
//                             content: Text('هل أنت متأكد من رغبتك في حذف المنتج؟'),
//                             actions: [
//                               TextButton(
//                                 child: Text('لا'),
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                               ),
//                               TextButton(
//                                 child: Text('نعم'),
//                                 onPressed: () {
//                                   deleteProduct(index);
//                                   Navigator.of(context).pop();
//                                 },
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ],
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
//                     TextField(
//                       controller: imageController,
//                       decoration: InputDecoration(labelText: 'رابط الصورة'),
//                     ),
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
//                     child: Text('حفظ'),
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