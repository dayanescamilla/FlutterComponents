import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
//import 'package:flutter_components/screens/listview_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOpts = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 10,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOpts[index].name),
                leading: Icon(menuOpts[index].icon),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListviewOneScreen(),
                  // );

                  Navigator.pushNamed(context, menuOpts[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOpts.length),
    );
  }
}
