import 'package:flutter/material.dart';

class Launchbox extends StatelessWidget {
  const Launchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/icons/lunch-bag.png"),
            opacity: 0.2,
            fit: BoxFit.contain
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Insalata di riso",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Bresaola",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Insalata",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}