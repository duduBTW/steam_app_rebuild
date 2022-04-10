import 'package:flutter/material.dart';

PreferredSizeWidget guarAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      "Steam Guard",
      style: TextStyle(fontSize: 16, color: Color(0xffECEFF4)),
    ),
    automaticallyImplyLeading: false,
    leading: Container(
      padding: const EdgeInsets.all(12),
      width: 36,
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://pbs.twimg.com/profile_images/1381972907375480833/JoCT-Skd_400x400.jpg"),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.info_outline),
      )
    ],
  );
}
