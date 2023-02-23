import 'package:flutter/material.dart';

void main() => runApp(const AvatarScreen());

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('DE'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/onepunchman/images/c/c0/Anime_-_Saitama.jpg/revision/latest?cb=20200308230733&path-prefix=es'),
          maxRadius: 200,
        ),
      ),
    );
  }
}
