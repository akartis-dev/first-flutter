import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Color primaryGreen = const Color(0xff416d6d);

List<BoxShadow> shadowList = [
  const BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'image': 'Cats', 'iconPath': 'images/cat.png'},
  {'image': 'Dogs', 'iconPath': 'images/dog.png'},
  {'image': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'image': 'Parrots', 'iconPath': 'images/parrot.png'},
  {'image': 'Horses', 'iconPath': 'images/horse.png'},
];
