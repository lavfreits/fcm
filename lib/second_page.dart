import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (message.notification != null &&
                message.notification?.title != null &&
                message.notification?.body != null) ...[
              Text('${message.notification!.title}'),
              Text('${message.notification!.body}'),
            ] else ...[
              const Text("No data in the notification"),
            ]
          ],
        ),
      ),
    );
  }
}
