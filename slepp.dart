import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تغيير لون الخلفية',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).currentMode,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('تغيير لون الخلفية'),
      ),
      body: Container(
        color: themeProvider.currentMode == ThemeMode.dark
            ? Colors.black
            : Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في التطبيق',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  themeProvider.toggleTheme();
                },
                child: Text(
                  themeProvider.currentMode == ThemeMode.dark
                      ? 'الوضع النهاري'
                      : 'الوضع الليلي',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeProvider with ChangeNotifier {
  ThemeMode _currentMode = ThemeMode.light;

  ThemeMode get currentMode => _currentMode;

  void toggleTheme() {
    _currentMode =
        _currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}