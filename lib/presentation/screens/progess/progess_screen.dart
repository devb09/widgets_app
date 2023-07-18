import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progess_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('Circular Progress indicator'),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Progress circular y linear'),
          const SizedBox(
            height: 10,
          ),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300),
            (computationCount) {
          return (computationCount * 2) / 100;
        }).takeWhile((element) => element < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
