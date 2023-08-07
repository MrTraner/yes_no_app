import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';

import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://1.bp.blogspot.com/-K5xmMaubk58/YAWr34GnO_I/AAAAAAAA0L0/WadlEdUv8hsfsB-zv_mW5kNE6vnjLXFzgCLcBGAsYHQ/s2048/Elizabeth%2BOlsen%2BGawalpop.jpg'))),
            title: const Text('Elizabeth ❤'),
            centerTitle: true),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messageList[index];
                    return (message.fromWho == FromWho.hers)
                      ? const HerMessageBubble()
                      : MyMessageBubble(message: message);
                  })),
          //Caja de texto de mensajes
          MessageFieldBox(
            //onValue: (value) => chatProvider.sendMessage(value)
            onValue: chatProvider.sendMessage
          )
        ])
    ));
  }
}
