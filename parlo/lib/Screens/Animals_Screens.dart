
import 'package:flutter/material.dart';

import 'package:parlo/Model/Data_Cass.dart';
import 'package:parlo/Widget/Coustem_listtile.dart';

class dataScreens extends StatelessWidget {
  final String title;
  final List<model> list;

  const dataScreens({
    super.key,
    required this.title,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black54,
                blurRadius: 4,
                offset: Offset(1, 2),
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              'lib/Logo/images__5_-removebg-preview.png',
              fit: BoxFit.cover,
            ),
          ),

          // القائمة البيضاء
          ListView.builder(
            padding: const EdgeInsets.only(
              top: 85,
              left: 10,
              right: 10,
              bottom: 10,
            ),

            itemCount: list.length,

            itemBuilder: (context, index) {
              return CoustemListtile(
                image: list[index].image,
                textenglish: list[index].textenglish,
                texItliano: list[index].texItliano,
                audio: list[index].audio ,
              );
            },
          ),
        ],
      ),
    );
  }
}
