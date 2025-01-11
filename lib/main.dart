import 'package:eissa_lab4/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) :super(key:key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        
        drawer: MyDrawer(),
        
      ),
      
      ),
      
    );
  }
}
