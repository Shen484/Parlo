import 'package:flutter/material.dart';
import 'package:parlo/Model/Animals.dart';
import 'package:parlo/Model/Body.dart';
import 'package:parlo/Model/Clothes.dart';
import 'package:parlo/Model/Colors.dart';
import 'package:parlo/Model/Family.dart';
import 'package:parlo/Model/Fruits.dart';
import 'package:parlo/Model/House.dart';
import 'package:parlo/Model/Numbers.dart';
import 'package:parlo/Model/School.dart';
import 'package:parlo/Model/TransSprt.dart';


import 'package:parlo/Screens/Animals_Screens.dart';
import 'package:parlo/Widget/Coustem_Contener.dart';
import 'package:parlo/Widget/coustem_Grid.dart';

class CatlogScreen extends StatelessWidget {
  const CatlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,

        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'lib/Logo/images__2_-removebg-preview.png',
              height: 45,
              width: 45,
              fit: BoxFit.contain,
            ),

            const SizedBox(width: 5),

            Image.asset(
              'lib/Logo/Logo.png',
              height: 55,
              color: Colors.white,
              fit: BoxFit.contain,
            ),

            Image.asset(
              'lib/Logo/images__2_-removebg-preview.png',
              height: 45,
              width: 45,
              fit: BoxFit.contain,
            ),
          ],
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

          // المحتوى
          Positioned.fill(
            child: GridView(
              padding: const EdgeInsets.all(8),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.15,
              ),

              children: [
                CoustemGrid(
                  imagecatlog: 'lib/Logo/images-removebg-preview (1).png',
                  textcatlog: 'Animals',
                  NextWidget: dataScreens(title: 'Animals', list: animals),
                ),

                CoustemContener(
                  image: 'assets/Images/body_icons/body/01_eye.png',
                  text: 'Body',
                  color: Colors.lightBlue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Body', list: body),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image:
                      'assets/Images/clothes_icons/clothes/01_tshirt.png',
                  text: 'Clothes',
                  color: Colors.pinkAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Clothes', list: clothes),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image: 'assets/Images/colors_icons/colors/01_red.png',
                  text: 'Colors',
                  color: Colors.redAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Colors', list: colors),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image:
                      'assets/Images/family_icons/family/11_family_group.png',
                  text: 'Family',
                  color: Colors.orangeAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Family', list: family),
                      ),
                    );
                  },
                ),

              

                CoustemContener(
                  image: 'assets/Images/fruits_icons/fruits/01_apple.png',
                  text: 'Fruits',
                  color: Colors.greenAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Fruits', list: fruits),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image: 'assets/Images/house_icons/house/01_house.png',
                  text: 'House',
                  color: Colors.orangeAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'House', list: house),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image: 'assets/Images/numbers_order/numbers/1.png',
                  text: 'Numbers',
                  color: Colors.blueAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Numbers', list: numbers),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image:
                      'assets/Images/school_icons/school/01_school_building.png',
                  text: 'School',
                  color: Colors.purpleAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'School', list: school),
                      ),
                    );
                  },
                ),

                CoustemContener(
                  image:
                      'assets/Images/transport_icons/transport/01_car.png',
                  text: 'Transport',
                  color: Colors.redAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            dataScreens(title: 'Transport', list: transport),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
