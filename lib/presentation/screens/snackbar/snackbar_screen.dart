import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Lorem enim fugiat anim non officia sunt non laboris laboris. Ex velit nisi consequat aute est do do Lorem pariatur reprehenderit ipsum culpa anim nisi. Irure quis amet labore esse ea minim sunt esse irure non aute. Labore anim deserunt non magna quis duis dolor duis. Consequat dolore consectetur amet excepteur occaecat irure et Lorem est nostrud sunt cillum commodo sint. Non eu irure Lorem enim sit amet voluptate enim non cupidatat irure enim. Excepteur irure ut est esse eu id sint velit nisi adipisicing consequat Lorem sit est.')
                  ]);
                },
                child: const Text('Licensias usadas')),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('Mostrar dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
