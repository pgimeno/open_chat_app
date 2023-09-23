import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VivoChat'),
        actions: [
          IconButton(onPressed: () async {
            await _firebase.signOut();
          }, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: const Center(
        child: Text('logged in!'),
      ),
    );
  }
}
