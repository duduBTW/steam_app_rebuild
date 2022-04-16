import 'package:flutter/material.dart';
import 'package:steam/components/store_discover_card.dart';

class StoreDiscoverList extends StatelessWidget {
  const StoreDiscoverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      "Recomendado para Você",
      style: TextStyle(
          color: Color(0xffECEFF4), fontSize: 18, fontWeight: FontWeight.w600),
    );

    final list = Container(
      height: 130,
      child: ListView.builder(
        itemBuilder: (context, index) => StoreDiscoverCard(),
        itemCount: 10,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
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
