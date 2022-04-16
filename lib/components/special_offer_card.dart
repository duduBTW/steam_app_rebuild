import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/special_offer.dart';

class SpecialOfferCard extends StatelessWidget {
  final SpecialOffer specialOffer;
  const SpecialOfferCard({Key? key, required this.specialOffer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cover = Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  specialOffer.cover,
                ),
                fit: BoxFit.cover)),
      ),
    );

    var productInfo = Container(
      color: const Color(0xff32353B),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            specialOffer.offerType,
            style: const TextStyle(color: Color(0xffECEFF4), fontSize: 14),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Até ${DateFormat("dd/MM").format(specialOffer.end)}",
                style: TextStyle(
                    color: const Color(0xffECEFF4).withOpacity(0.6),
                    fontSize: 12),
              ),
              const Spacer(),
              const Text(
                "R\$ 71,70",
                style: TextStyle(color: Color(0xffECEFF4), fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );

    return Container(
      width: 173,
      height: 246,
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
