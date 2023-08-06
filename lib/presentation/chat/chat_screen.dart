import 'package:flutter/material.dart';

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
    return SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Text('Indice: $index');
                  })),
          const Text('Hola'),
          const Text('Mundo')
        ])
    ));
  }
}
