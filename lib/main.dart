import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:goal/pages/ThemePage.dart';
import 'package:goal/Provider/ThemePage_Provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemepageProvider>(
      create: (context) => ThemepageProvider(),
      child:MyWidget(),),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemepageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: provider.thememode, 
      home: Themepage(),
    );
  }
}