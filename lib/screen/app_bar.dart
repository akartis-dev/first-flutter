import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  const CustomAppBar({Key? key, required this.height}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Messages',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
          ]),
        ],
      ),
    );
  }
}
