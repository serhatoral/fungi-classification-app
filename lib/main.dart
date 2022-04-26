import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fungi_classification/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fungi Classification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
          iconTheme: IconThemeData(
           color: Colors.black, //change your color here
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

