import 'package:flutter/material.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //lista de pestañas
  List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //para el icono de la izquierda
          leading: Icon(Icons.menu, color: Colors.grey),
          //icono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person, color: Colors.grey),
            ),
          ],
        ),
        body: Column(
          children: [
            //1. texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Row(
                children: const [
                  Text('I want to ', style: TextStyle(fontSize: 32)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            //2. pestañas (TabBar)
            TabBar(tabs: myTabs),

            //3. contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(
                children: const [
                  Center(child: Text('Donuts')),
                  Center(child: Text('Burgers')),
                  Center(child: Text('Smoothies')),
                  Center(child: Text('Pancakes')),
                  Center(child: Text('Pizza')),
                ],
              ),
            ),

            //4. carrito (cart)
          ],
        ),
      ),
    );
  }
}
