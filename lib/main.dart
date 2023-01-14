import 'package:flutter/material.dart';
import 'package:layouts/widgets/button_section.dart';
import 'package:layouts/widgets/text_section.dart';
import 'package:layouts/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(            
              'images/lake.jpg',            
              width: 600,            
              height: 240,            
              fit: BoxFit.cover,            
            ),
            titleSection,
            ButtonSection(),
            textSection,
          ],
        ),
      ),
    );
  }
}