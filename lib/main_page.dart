import 'package:flutter/material.dart';
import 'mycard.dart';
import 'dishtype.dart';
import 'launchbox.dart';
import 'info.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageContentState();
}

class MenuBody extends StatefulWidget {
  const MenuBody({super.key});

  @override
  State<MenuBody> createState() => _MenuBodyState();
}

class _MenuBodyState extends State<MenuBody> {

  //state
  List<List<String>> menu = [
    ["Pasta al pomodoro", "Risotto ai funghi"],
    ["Pollo arrosto", "Bistecca alla griglia", "Pesce al forno"],
    ["Insalata mista", "Patate al forno", "Verdure grigliate"],
    ["Arancini di riso", "Supplì al telefono", "Crocchette di patate"],
  ];

  void updateMenu(List<List<String>> newMenu) {
    setState(() {
      menu = newMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              ShaderMask(
                shaderCallback:
                    (bounds) => LinearGradient(
                      colors: [
                        Color.fromRGBO(175, 103, 249, 1),
                        Color.fromRGBO(244, 150, 102, 1),
                      ],
                    ).createShader(bounds),
                child: Text(
                  "OGGIAMENSA",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Scrollbar(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final cards = [
                        MyCard(
                          dishtype: Dishtype.Primi,
                          content: menu[0],
                        ),
                        MyCard(
                          dishtype: Dishtype.Secondi,
                          content: menu[1],
                        ),
                        MyCard(
                          dishtype: Dishtype.Contorni,
                          content: menu[2]
                        ),
                        MyCard(
                          dishtype: Dishtype.Rosticceria,
                          content: menu[3],
                        ),
                      ];
                      return cards[index];
                    },
                    separatorBuilder:
                        (context, index) => const SizedBox(height: 4),
                    itemCount: 4,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll<Color>(
                    Colors.orangeAccent,
                  ),
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                  side: WidgetStatePropertyAll<BorderSide>(
                    BorderSide(color: Colors.orangeAccent),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send),
                    SizedBox(width: 8),
                    Text("Manda segnalazione"),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class _MainPageContentState extends State<MainPage>{

  final List<Widget> bodies = [
    MenuBody(),
    Launchbox(),
    InfoBody()
  ];

  //state
  int pageIndex = 0;

  //setstate
  void _setBody(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[pageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageIndex,
        onDestinationSelected: (int index) {
          _setBody(index);
        },
        destinations: <Widget>[
          const NavigationDestination(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Menu',
          ),
          NavigationDestination(
            icon: Image.asset(
              'asset/images/icons/shopping-bag.png',
              width: 24,
              height: 24,
            ),
            label: 'Launchbox',
          ),
          const NavigationDestination(icon: Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}
