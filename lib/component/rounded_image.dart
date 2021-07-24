import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';

class RoundedImageWidget extends StatelessWidget {
  final RandomUser user;
  final double dimension;
  const RoundedImageWidget({Key? key, required this.user, this.dimension = 75})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimension,
      width: dimension,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(user.largePicture),
            fit: BoxFit.cover,
          )),
    );
  }
}
