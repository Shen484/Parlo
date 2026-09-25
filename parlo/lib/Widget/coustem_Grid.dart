// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:parlo/Widget/Coustem_Contener.dart';

class CoustemGrid extends StatelessWidget {
  String imagecatlog;
  String textcatlog;
  Widget NextWidget;
  CoustemGrid({
    Key? key,
    required this.imagecatlog,
    required this.textcatlog,
    required this.NextWidget,
  }) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
    return 
      
        CoustemContener(
          image: imagecatlog,
          text: textcatlog,
          color: Colors.tealAccent.shade700,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NextWidget,
              ),
            );
          },
    
    );
  }
}
