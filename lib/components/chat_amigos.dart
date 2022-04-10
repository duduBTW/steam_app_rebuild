import 'package:flutter/material.dart';

import 'chat_amigos_item.dart';

class ChatAmigos extends StatelessWidget {
  const ChatAmigos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            style: const TextStyle(color: Color(0xffECEFF4)),
            decoration: InputDecoration(
                hintText: 'Pesquisar',
                prefixIcon: Icon(
                  Icons.search,
                  color: const Color(0xffECEFF4).withOpacity(0.6),
                )),
          ),
          const SizedBox(
            height: 13,
          ),
          Expanded(
            flex: 1,
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 20,
                itemBuilder: ((context, index) => const ChatAmigosItem())),
          )
        ],
      ),
    );
  }
}
