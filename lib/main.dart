import 'package:flutter/material.dart';
import 'package:only_cards/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ONLY CARDS',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}
