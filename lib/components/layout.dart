import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Widget Function(int paginaAtual) getBody;
  final PreferredSizeWidget Function(int paginaAtual) getAppBar;
  const Layout({Key? key, required this.getBody, required this.getAppBar})
      : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int paginaAtual = 0;

  void mudarDeAba(int novaAba) {
    setState(() {
      paginaAtual = novaAba;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.getAppBar(paginaAtual),
      body: widget.getBody(paginaAtual),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        type: BottomNavigationBarType.fixed,
        onTap: mudarDeAba,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedItemColor: const Color(0xffECEFF4),
        unselectedItemColor: const Color(0xff757575),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Loja"),
          BottomNavigationBarItem(icon: Icon(Icons.shield), label: "Guard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle), label: "Comunidade"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Mais"),
        ],
      ),
    );
  }
}
