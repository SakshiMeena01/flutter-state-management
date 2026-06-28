import 'package:flutter/material.dart';
import 'package:goal/pages/CounterPage.dart';
// import 'package:goal/pages/HomePage.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Counterpage(),

    );
  }
}
