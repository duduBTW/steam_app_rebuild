import 'package:flutter/material.dart';

class StoreBrowseSteamChip extends StatelessWidget {
  final String browseSteamTag;
  const StoreBrowseSteamChip({Key? key, required this.browseSteamTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0),
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2222),
          color: const Color(0xff32353B)),
      child: Text(
        browseSteamTag,
        style: const TextStyle(color: Color(0xffECEFF4), fontSize: 16),
      ),
    );
  }
}
