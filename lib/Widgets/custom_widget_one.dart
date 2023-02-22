import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardOne extends StatelessWidget {
  const CustomCardOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            title: const Text('data'),
            leading: const Icon(
              Icons.abc,
              color: AppTheme.colorPrimario,
            ),
            subtitle: const Text(
                'Do amet minim culpa elit. Magna pariatur mollit laborum in quis cillum cillum eu excepteur cupidatat elit fugiat. Id deserunt nostrud non nostrud exercitation ipsum labore quis excepteur ut ullamco sint magna occaecat. Proident ex aute duis labore qui minim amet in laboris enim. Sit et eiusmod dolor proident enim non mollit ipsum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Cancelar',
                    //style: TextStyle(color: AppTheme.colorPrimario),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Aceptar',
                    //style: TextStyle(color: AppTheme.colorPrimario),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
