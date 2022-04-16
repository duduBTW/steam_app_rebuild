import 'package:flutter/material.dart';
import 'package:steam/components/special_offer_card.dart';

import '../models/special_offer.dart';

class SpecialOffersList extends StatelessWidget {
  final List<SpecialOffer> specialOffers;
  const SpecialOffersList({Key? key, required this.specialOffers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Ofertas Especiais",
                style: TextStyle(
                    color: Color(0xffECEFF4),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(Icons.navigate_next, color: Color(0xffECEFF4))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 246,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: specialOffers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SpecialOfferCard(
                  specialOffer: specialOffers[index],
                ),
              ))
        ],
      ),
    );
  }
}
