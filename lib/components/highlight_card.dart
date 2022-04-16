import 'package:flutter/material.dart';

import '../models/Highlight.dart';
import '../utils/get_opetating_system_icon.dart';

class HighlightCard extends StatelessWidget {
  final Highlight highlight;
  const HighlightCard({Key? key, required this.highlight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff32353B);
    const textColor = Color(0xffECEFF4);

    var cover = Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  highlight.cover,
                ),
                fit: BoxFit.cover)),
      ),
    );

    var productInfo = Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        color: color,
        child: Row(
          children: [
            Text(
              highlight.title,
              style: const TextStyle(
                  fontSize: 16, color: textColor, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 6,
            ),
            ...highlight.operatingSystems
                .map(
                  (operatingSystem) => Icon(
                    getOpetatingSystemIcon(operatingSystem),
                    size: 18,
                    color: textColor,
                  ),
                )
                .toList(),
            const Spacer(),
            Text(
              "R\$ ${highlight.price}",
              style: const TextStyle(color: textColor),
            )
          ],
        ));

    return Container(
      width: 333,
      height: 238,
      margin: const EdgeInsets.only(right: 10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [cover, productInfo],
      ),
    );
  }
}
