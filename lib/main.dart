import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Center(
              child: Text('My Good Mood App'),
            ),
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Hello Sunshine',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
              Image(
                image: AssetImage('images/obraz.png'),
                width: 350,
              ),
            ],
          )),
    );
  }
}
