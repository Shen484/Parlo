import 'package:flutter/material.dart';
import 'package:parlo/Widget/Coustem_Contener.dart';
import 'package:parlo/Widget/Coustem_listtile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(children: [SizedBox(height: 105,
          child: Image.asset('lib/Logo/Logo.png'))],),
      ),
      body: SafeArea(child: Column(
        children: [ CoustemListtile(), 
        ],
      ))
      
    );
  }
}