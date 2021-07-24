import 'package:flutter/material.dart';
import 'package:message/component/input_section.dart';
import 'package:message/component/message_section.dart';
import 'package:message/component/story_section.dart';
import 'package:message/screen/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
        actions: const [
          Icon(
            Icons.edit,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: const [
            FormSectionWidget(),
            StorySectionWidget(),
            MessageSectionWidget()
          ],
        ),
      ),
    );
  }
}
