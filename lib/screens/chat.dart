import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OpenChat'),
          actions: [
            IconButton(
                onPressed: () async {
                  await _firebase.signOut();
                },
                icon: Icon(Icons.exit_to_app)),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: ChatMessages()),
            NewMessage(),
          ],
        ));
  }

  void setUpPushNotifications() async {
    final fcm = FirebaseMessaging.instance;
    await fcm.requestPermission();

    fcm.subscribeToTopic('chat');

    /*
    final token = await fcm.getToken();
    print(token);*/
  }

  @override
  void initState() {
    super.initState();

    setUpPushNotifications();
  }
}
