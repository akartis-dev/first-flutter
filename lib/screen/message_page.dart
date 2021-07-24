import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';
import 'package:message/component/appBar/message_app_bar.dart';
import 'package:message/component/message/from_message.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);
  static const routeName = '/messages';
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as RandomUser;
    return Scaffold(
      appBar: MessageAppBar(
        user: user,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: Random().nextInt(20),
            itemBuilder: (context, i) {
              return MessageUserWidget(
                myMessage: i % 2 == 0,
              );
            }),
      ),
    );
  }
}
