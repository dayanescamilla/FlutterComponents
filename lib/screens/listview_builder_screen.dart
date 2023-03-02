import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      //print(' ${scrollController.position.pixels}');
      //print('${scrollController.position.maxScrollExtent}');

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //addDiez();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addDiez();

    isLoading = false;

    setState(() {});
  }

  void addDiez() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
              physics: const BouncingScrollPhysics(), //Efecto desvorde
              controller: scrollController,
              itemCount: imagesId.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    fit: BoxFit.contain,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/seed/picsum/200/300?image=${imagesId[index]}'));
              }),
          Positioned(
              left: size.width * 0.5 - 30, bottom: 10, child: _loadindIcon())
        ],
      ),
    );
  }
}

class _loadindIcon extends StatelessWidget {
  const _loadindIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(color: AppTheme.colorPrimario),
    );
  }
}
