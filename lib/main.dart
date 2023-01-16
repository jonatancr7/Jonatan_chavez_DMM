import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/buttom_seccion.dart';
import 'package:my_first_app/widgets/text_section.dart';
import 'package:my_first_app/widgets/title_section.dart';


void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children:[
            Image.asset('images/lake.jpg',
            width: 600,
            height: 240,            
            fit: BoxFit.cover,
            ),
            const  TitleSection(), const button_section(),const text_section()
          ],
        ),
      ),
    );
  }

}