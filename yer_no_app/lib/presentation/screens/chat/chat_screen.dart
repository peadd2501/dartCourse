import 'package:flutter/material.dart';
import 'package:yer_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://d3g9pb5nvr3u7.cloudfront.net/authors/5be1d83f2177895b3e20c1e1/-1018204645/256.jpg'),
          ),
        ),
        title: const Text('Mi Amor 💖'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
            },),
            ),
            const Text('Hola'),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}