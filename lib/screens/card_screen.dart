import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  title: Text('data'),
                  leading: Icon(
                    Icons.abc,
                    color: AppTheme.colorPrimario,
                  ),
                  subtitle: Text(
                      'Do amet minim culpa elit. Magna pariatur mollit laborum in quis cillum cillum eu excepteur cupidatat elit fugiat. Id deserunt nostrud non nostrud exercitation ipsum labore quis excepteur ut ullamco sint magna occaecat. Proident ex aute duis labore qui minim amet in laboris enim. Sit et eiusmod dolor proident enim non mollit ipsum.'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
