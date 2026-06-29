import 'package:flutter/material.dart';
import 'package:goal/Provider/ThemePage_Provider.dart';
import 'package:provider/provider.dart';

class Themepage extends StatefulWidget {
  const Themepage({super.key});

  @override
  State<Themepage> createState() => _ThemepageState();
}

class _ThemepageState extends State<Themepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lets Change the Theme',style: TextStyle(fontStyle:FontStyle.italic,color: Colors.blue,fontSize: 20),),
        ),
        body: Consumer<ThemepageProvider>(
          builder: (context,provider,child){
            return Column(
              children: [
                RadioListTile(
                  title: Text('Light Mode'),
                  value: 'Light Mode',
                  groupValue: provider.selectedTheme,
                  onChanged: (val)=>provider.changeTheme(val!),
                  ),
                  RadioListTile(
                  title: Text('Dark Mode'),
                  value: 'Dark Mode',
                  groupValue: provider.selectedTheme,
                  onChanged: (val)=>provider.changeTheme(val!),
                  ),
                  RadioListTile(
                  title: Text('System Mode'),
                  value: 'System Mode',
                  groupValue: provider.selectedTheme,
                  onChanged: (val)=>provider.changeTheme(val!),
                  ),
              ],
            );
          }),
      );
  }
}