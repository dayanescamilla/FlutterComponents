import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomWidgetTwo extends StatelessWidget {
  const CustomWidgetTwo({super.key, required this.imageURL, this.textoOne});

  final String imageURL;
  final String? textoOne;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      clipBehavior: Clip.antiAlias,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: AppTheme.colorPrimario.withOpacity(1),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //Toma todo el ancho posible
            height: 250,
            //fit: BoxFit.cover,
            // fadeInDuration: const Duration(microseconds: 300),
          ),
          if (textoOne != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(textoOne!),
            )
        ],
      ),
    );
  }
}
