import 'package:flutter/material.dart';
import 'package:steam/components/store_browse_steam_chip.dart';

class StoreBrowseSteam extends StatelessWidget {
  final List<String> browseSteamTags;
  const StoreBrowseSteam({Key? key, required this.browseSteamTags})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Row(
      children: const [
        Text(
          "Navegar pela Steam",
          style: TextStyle(
              color: Color(0xffECEFF4),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Icon(Icons.navigate_next, color: Color(0xffECEFF4))
      ],
    );

    final list = SizedBox(
      height: 48,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemBuilder: (context, index) =>
            StoreBrowseSteamChip(browseSteamTag: browseSteamTags[index]),
        itemCount: browseSteamTags.length,
        scrollDirection: Axis.horizontal,
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          const SizedBox(
            height: 12,
          ),
          list
        ],
      ),
    );
  }
}
