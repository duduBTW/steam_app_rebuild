import 'package:flutter/material.dart';
import 'package:steam/components/chat_app_bar.dart';
import 'package:steam/components/layout.dart';

// appbar
import '../components/guard_app_bar.dart';
import '../components/store_app_bar.dart';

// pages
import './guard.dart';
import './chat.dart';
import './store.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  Widget getBody(int paginaAtual) {
    switch (paginaAtual) {
      case 0:
        return const Chat();
      case 1:
        return Store();
      case 2:
        return const Guard();
      default:
        return Container();
    }
  }

  PreferredSizeWidget getAppBar(int paginaAtual, BuildContext context) {
    switch (paginaAtual) {
      case 0:
        return chatAppBar(context);
      case 1:
        return storeAppBar(context);
      case 2:
        return guarAppBar(context);
      default:
        return AppBar();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      getBody: getBody,
      getAppBar: (paginaAtual) => getAppBar(paginaAtual, context),
    );
  }
}
