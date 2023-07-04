import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {

  static const String name = 'crads_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
    );
  }
}
