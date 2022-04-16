import 'package:flutter/material.dart';
import 'package:steam/models/Highlight.dart';

import '../utils/get_opetating_system_icon.dart';

class StoreDiscoverCard extends StatelessWidget {
  const StoreDiscoverCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icons = [EnumOperatingSystems.mac, EnumOperatingSystems.windows];
    final cover = Expanded(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://pbs.twimg.com/media/FNKWPpVaQAQi0k7?format=jpg&name=4096x4096",
                ),
                fit: BoxFit.cover)),
      ),
    );

    final info = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: const Color(0xff32353B),
      child: Row(children: [
        ...icons
            .map(
              (icon) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(
                  getOpetatingSystemIcon(icon),
                  color: const Color(0xffECEFF4),
                  size: 16,
                ),
              ),
            )
            .toList(),
        const Spacer(),
        Text(
          "R\$100",
          style: Theme.of(context).textTheme.headline4,
        )
      ]),
    );

    return Container(
      height: 130,
      width: 254,
      margin: const EdgeInsets.only(right: 10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [cover, info],
      ),
    );
  }
}
