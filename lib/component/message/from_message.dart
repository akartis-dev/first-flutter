import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class MessageUserWidget extends StatelessWidget {
  final bool myMessage;
  late String? message;
  MessageUserWidget({Key? key, this.message, this.myMessage = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sentence = lorem(paragraphs: 1, words: 20);
    return Column(
      crossAxisAlignment:
          myMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        FractionallySizedBox(
          widthFactor: 0.7,
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: myMessage ? Colors.blue : Colors.blueGrey),
            child: Text(
              sentence,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
