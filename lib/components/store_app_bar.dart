import 'package:flutter/material.dart';

// components
import 'foto_de_perfil.dart';

PreferredSizeWidget storeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: Container(
      padding: const EdgeInsets.all(12),
      width: 36,
      child: const FotoDePerfil(),
    ),
    actions: const [
      Padding(
          padding: EdgeInsets.all(12.0), child: Icon(Icons.favorite_border)),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.shopping_cart_outlined),
      ),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.search),
      ),
    ],
  );
}
