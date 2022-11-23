import 'package:colored_text/colored_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Colored Text package example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const ColoredText(
                'Red Colored Text',
                color: Colors.red,
              ),
              const ColoredText(
                'small Blue Colored Text',
                color: Colors.blue,
                fontSize: 12,
              ),
              const ColoredText(
                'big Green Colored Text',
                color: Colors.green,
                fontSize: 20,
              ),
              const Divider(color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('You can easily '),
                  ColoredText('Emphasize', color: Colors.redAccent),
                  Text(' something you want to!'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You can also define with ',
                  ),
                  ColoredText(
                    'Custom FontStyle',
                    color: Colors.amber,
                    textStyle: GoogleFonts.dancingScript(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
