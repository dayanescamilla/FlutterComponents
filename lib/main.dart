import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';

// import 'package:flutter_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //  home: const ListviewTwoScreen(),
      initialRoute: AppRoutes.initalRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(color: Colors.redAccent),
      ),
    );
  }
}
