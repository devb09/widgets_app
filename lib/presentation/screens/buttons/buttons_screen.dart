import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _Buttons(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back)),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(alignment: WrapAlignment.center, spacing: 10.0, children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated disabled')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline_outlined),
              label: const Text('Elevated icon')),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_time),
              label: const Text('Filled icon')),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.text_decrease),
              label: const Text('Outlined icon')),
          TextButton(onPressed: () {}, child: const Text('Text')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.exposure_zero),
              label: const Text('Text icon')),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.report_gmailerrorred)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.theater_comedy),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)),
          )
        ]),
      ),
    );
  }
}
