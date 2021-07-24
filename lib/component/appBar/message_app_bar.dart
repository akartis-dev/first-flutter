import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';
import 'package:message/component/rounded_image.dart';

class MessageAppBar extends StatelessWidget implements PreferredSizeWidget {
  late RandomUser user;
  MessageAppBar({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          RoundedImageWidget(
            user: user,
            dimension: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              user.userName,
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
