import 'package:flutter/material.dart';
import 'package:goal/Provider/HomePage_Provider.dart';
import 'package:provider/provider.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: SafeArea(
    child: Container(
      padding: const EdgeInsets.all(20),
      child: ChangeNotifierProvider<HomePageProvider>(
        create: (_) => HomePageProvider(),
        child: Consumer<HomePageProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Text(
                  provider.elibilityMessage.toString(),
                  style: TextStyle(
                    color: provider.isEligible == true
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Enter your age",
                  ),
                  onChanged: (val) {
                    provider.checkElibility(int.parse(val));
                  },
                ),
              ],
            );
          },
        ),
      ),
    ),
  ),
);
  }
}