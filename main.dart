import 'package:flutter/material.dart';
import 'package:my_app/Cart.dart';
import 'package:my_app/category_listing.dart';
import 'package:my_app/createaccount.dart';
import 'package:my_app/homepage.dart';
import 'package:my_app/onboarding.dart';
import 'package:my_app/product.dart';
import 'package:my_app/slepp.dart';
import 'package:my_app/splash_screen.dart';
// import 'package:my_app/test.dart';
// import 'package:my_app/test2.dart';
import 'package:my_app/verify_code.dart';
import 'package:my_app/verify_otp.dart';
import 'package:my_app/welcome.dart';
import 'package:my_app/welcome_back.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'تغيير لون الخلفية',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: Provider.of<ThemeProvider>(context).currentMode,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('تغيير لون الخلفية'),
//       ),
//       body: Container(
//         color: themeProvider.currentMode == ThemeMode.dark
//             ? Colors.black
//             : Colors.white,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'مرحبًا بك في التطبيق',
//                 style: TextStyle(fontSize: 24.0),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   themeProvider.toggleTheme();
//                 },
//                 child: Text(
//                   themeProvider.currentMode == ThemeMode.dark
//                       ? 'الوضع النهاري'
//                       : 'الوضع الليلي',
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ThemeProvider with ChangeNotifier {
//   ThemeMode _currentMode = ThemeMode.light;

//   ThemeMode get currentMode => _currentMode;

//   void toggleTheme() {
//     _currentMode =
//         _currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
// }
