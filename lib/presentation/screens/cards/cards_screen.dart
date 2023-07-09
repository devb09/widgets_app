import 'package:flutter/material.dart';

final cards = <Map<String,dynamic>>[
  {'elevation': 0.0,'label':'Elevation 0'},
  {'elevation': 1.0,'label':'Elevation 1'},
  {'elevation': 2.0,'label':'Elevation 2'},
  {'elevation': 3.0,'label':'Elevation 3'},
  {'elevation': 4.0,'label':'Elevation 4'},
  {'elevation': 5.0,'label':'Elevation 5'},
];

class CardsScreen extends StatelessWidget {

  static const String name = 'crads_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _CardView(),
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Cards');
  }
}
