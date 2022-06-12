import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    //setState para reconstruir el widget
    setState(() {
      //Creamos números random
      final random = Random();

      //Creamos valores random para nuestras variables de width y height
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;

      //Cambiamos el color por medio de RGBO para usar números random
      _color = Color.fromRGBO(
        random.nextInt(255), //255 dentro del máximo de la escala 0 to 255
        random.nextInt(255), 
        random.nextInt(255), 
        1
      );

      //Cambiamos el border radius  
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 400),
           curve: Curves.fastOutSlowIn,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadius
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.play_circle_outline, size: 35),
        onPressed: changeShape

      ),
      
    );
  }
}