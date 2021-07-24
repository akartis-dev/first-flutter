import 'package:flutter/material.dart';
import 'package:message/component/input_section.dart';
import 'package:message/component/message_section.dart';
import 'package:message/component/story_section.dart';
import 'package:message/screen/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(height: 60),
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
