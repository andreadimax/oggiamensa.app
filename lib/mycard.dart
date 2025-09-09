import 'package:flutter/material.dart';
import 'dishtype.dart';

class MyCard extends StatelessWidget {
  final Dishtype dishtype;
  final List<String> content;

  const MyCard({super.key, required this.dishtype, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Color.fromRGBO(245, 245, 245, 1),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(width: 0.5, color: Colors.orangeAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/icons/${dishtype.name.toLowerCase()}.png'),
              opacity: 0.4,
              alignment: Alignment.topRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    dishtype.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    content
                        .map(
                          (child) => Text(
                            child,
                            style: TextStyle(fontSize: 16, fontFamily: 'Arial'),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
