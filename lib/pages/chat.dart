import 'package:flutter/material.dart';

import '../components/chat_amigos.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        alignment: const Alignment(0, 0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Chat",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const TabBar(tabs: [
                Tab(child: Text("Amigos")),
                Tab(child: Text("Grupos")),
              ]),
              const Expanded(
                flex: 1,
                child: TabBarView(children: [
                  ChatAmigos(),
                  Center(
                    child: Text(""),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
