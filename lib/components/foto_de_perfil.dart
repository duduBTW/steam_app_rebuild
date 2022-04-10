import 'package:flutter/material.dart';

class FotoDePerfil extends StatelessWidget {
  const FotoDePerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://pbs.twimg.com/profile_images/1381972907375480833/JoCT-Skd_400x400.jpg"),
    );
  }
}
