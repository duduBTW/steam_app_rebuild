import 'package:flutter/material.dart';
import 'package:steam/components/store_browse_steam_list.dart';
import 'package:steam/components/store_discover_list.dart';
import 'package:steam/models/Highlight.dart';
import 'package:steam/models/special_offer.dart';

// components
import '../components/special_offers_list.dart';
import '../components/store_highlight_list.dart';

class Store extends StatelessWidget {
  Store({Key? key}) : super(key: key);
  final highlights = [
    Highlight(
        cover:
            "https://pbs.twimg.com/media/FKQZ0D-acAA34ZX?format=jpg&name=large",
        title: "Nekopara vol 1",
        operatingSystems: [EnumOperatingSystems.windows],
        price: 249.00),
    Highlight(
        cover:
            "https://pbs.twimg.com/media/FNPgokaaUAApH4S?format=jpg&name=4096x4096",
        title: "Nekopara vol 2",
        operatingSystems: [
          EnumOperatingSystems.windows,
          EnumOperatingSystems.mac
        ],
        price: 549.00),
    Highlight(
        cover:
            "https://pbs.twimg.com/media/FQI7oFXVIAAUooX?format=jpg&name=large",
        title: "Nekopara vol 3",
        operatingSystems: [EnumOperatingSystems.mac],
        price: 1049.00),
  ];

  final specialOffers = [
    SpecialOffer(
        cover:
            "https://pbs.twimg.com/media/FQTN-araUAA1tr2?format=jpg&name=large",
        offerType: "Oferta do fim de semana",
        end: DateTime.now(),
        price: 71.70),
    SpecialOffer(
        cover:
            "https://pbs.twimg.com/media/FQYbJwGakAQJEgD?format=jpg&name=4096x4096",
        offerType: "Oferta do doa",
        end: DateTime.now().add(const Duration(days: 2)),
        price: 71.70),
    SpecialOffer(
        cover:
            "https://pbs.twimg.com/media/FQOFVliUcAMueNJ?format=jpg&name=4096x4096",
        offerType: "Oferta do seculo",
        end: DateTime.now().add(const Duration(days: 3)),
        price: 999.99),
  ];

  final browseSteamTags = [
    "Lançamentos",
    "Anime",
    "Jogos Gratuitos",
    "Plataforma"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Loja",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          StoreHighlightList(
            highlights: highlights,
          ),
          const SizedBox(
            height: 32,
          ),
          SpecialOffersList(
            specialOffers: specialOffers,
          ),
          const SizedBox(
            height: 32,
          ),
          StoreBrowseSteam(browseSteamTags: browseSteamTags),
          const SizedBox(
            height: 32,
          ),
          StoreDiscoverList(),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
