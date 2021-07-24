import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';
import 'package:message/component/rounded_image.dart';

class MessageAppBar extends StatelessWidget implements PreferredSizeWidget {
  late RandomUser user;
  MessageAppBar({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.chevron_left)),
              Row(
                children: [
                  RoundedImageWidget(
                    user: user,
                    dimension: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(user.userName),
                  )
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
