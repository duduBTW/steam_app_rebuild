import 'package:flutter/material.dart';
import 'package:steam/models/Highlight.dart';

import 'highlight_card.dart';

// HighlightCard

class StoreHighlightList extends StatelessWidget {
  final List<Highlight> highlights;

  const StoreHighlightList({Key? key, required this.highlights})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      "Destaques",
      style: TextStyle(
          color: Color(0xffECEFF4), fontSize: 18, fontWeight: FontWeight.w600),
    );

    final list = SizedBox(
      height: 238,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HighlightCard(
          highlight: highlights[index],
        ),
        itemCount: highlights.length,
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
          list,
        ],
      ),
    );
  }
}
