import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //para el icono de la izquiera}da
        leading: Icon((Icons.menu),
          color: Colors.grey,
        ),
        //icono de la derecha
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person, color: Colors.grey),
          ),
        ],
      ),
      body: Column(
        //1. texto principal
        //2. pestañas (Tapbar)
        //3. contenido de pestañas (Tapbar view)
        //4. carrito (cart)
      ),
    );    
  
}
}

