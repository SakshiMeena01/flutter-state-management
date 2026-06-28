import 'package:flutter/material.dart';
import 'package:goal/Provider/CounterPage_Provider.dart';
import 'package:provider/provider.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterpageProvider>(
      create: (_) => CounterpageProvider(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lets Count!!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple)),
        ),
        body: Consumer<CounterpageProvider>(
          builder: (context, provider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${provider.count}',
                  style: TextStyle(fontSize: 80)),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => provider.increment(),
                      child: Text('+')),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => provider.decremnet(),
                      child: Text('-')),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => provider.reset(),
                      child: Text('Reset')),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}