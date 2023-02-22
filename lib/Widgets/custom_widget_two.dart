import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomWidgetTwo extends StatelessWidget {
  const CustomWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      clipBehavior: Clip.antiAlias,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: AppTheme.colorPrimario.withOpacity(1),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //Toma todo el ancho posible
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(microseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('data'),
          )
        ],
      ),
    );
  }
}
