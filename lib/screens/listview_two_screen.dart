import 'package:flutter/material.dart';

class ListviewTwoScreen extends StatelessWidget {
  const ListviewTwoScreen({super.key});

  final options = const ['Dayan', 'Nayad', 'Ayadn', 'Yadan', 'Danya', 'Yanad'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 10,
        title: const Text('ListView DOS'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => /*Text(options[index])*/ ListTile(
                title: Text(options[index]),
                trailing: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.red,
                ),
                onTap: () {
                  final click = options[index];
                  // ignore: avoid_print
                  print(click);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
