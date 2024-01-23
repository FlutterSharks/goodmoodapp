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
      home: const LoginPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text('My Good Mood App'),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Hello Sunshine',
                style: GoogleFonts.poppins(fontSize: 35),
              ),
            ),
            const Image(
              image: AssetImage('images/obraz.png'),
              width: 250,
            ),
            ElevatedButton(
                child: const Text(
                  'Start',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                })
          ],
        ));
  }
}

@override
Widget build(BuildContext context) {
  return const LoginPage();
}

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text('My Good Mood App'),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(),
            const Image(
              image: AssetImage('images/obraz.png'),
              width: 250,
            ),
            ElevatedButton(
                child: const Text(
                  'Go back',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FirstPage(),
                    ),
                  );
                })
          ],
        ));
  }
}
