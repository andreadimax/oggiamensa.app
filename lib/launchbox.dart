import 'package:flutter/material.dart';
import 'package:oggiamensa/mycard.dart';

class Launchbox extends StatefulWidget {

  const Launchbox({super.key});

  @override
  _LaunchboxState createState() => _LaunchboxState();
}

class _LaunchboxState extends State<Launchbox> {


  //state
  List<String> launchboxMenu = [
    "Insalata di riso",
    "Panino con prosciutto e formaggio",
    "Yogurt con frutta"
  ];

  //setState
  void updateLaunchboxMenu(List<String> newMenu) {
    setState(() {
      launchboxMenu = newMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              ShaderMask(
                shaderCallback:
                    (bounds) => LinearGradient(
                      colors: [
                        Color.fromRGBO(175, 103, 249, 1),
                        Color.fromRGBO(244, 150, 102, 1),
                      ],
                    ).createShader(bounds),
                child: Text(
                  "OGGILAUNCHBOX",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'asset/images/icons/lunch-bag.png',
                    ),
                ),
              ),
              Flexible(
                flex: 1,
                child: MyLittleCard(
                  imagePath: "asset/images/icons/rice-bowl.png",
                  title: launchboxMenu[0])
              ),
              Flexible(
                flex: 1,
                child: MyLittleCard(
                  imagePath: "asset/images/icons/sandwich.png",
                  title: launchboxMenu[1],
                )
              ),
              Flexible(
                flex: 1,
                child: MyLittleCard(
                  imagePath: "asset/images/icons/yogurt.png",
                  title: launchboxMenu[2],
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}
