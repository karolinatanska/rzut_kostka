import 'dart:math';
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
          primarySwatch: Colors.blue,
        ),
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Rzut kostką')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Rzuć kostką',
              style: GoogleFonts.lato(fontSize: 30),
            ),
            SizedBox(height: 35),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                icon: Icon(
                  Icons.sports_esports,
                  size: 35,
                ),
                label: Text('RZUCAM!',
                    style: GoogleFonts.lato(
                      fontSize: 25,
                    )))
          ]),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextInt(6) + 1;
    return Scaffold(
        appBar: AppBar(title: const Text('Rzut kostką')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              result.toString(),
              style: GoogleFonts.lato(fontSize: 40),
            ),
            SizedBox(height: 35),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
                label: Text(
                  'JESZCZE RAZ',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                  ),
                ))
          ]),
        ));
  }
}
