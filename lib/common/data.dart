import 'package:flutter_random_user/flutter_random_user.dart';

class DataFake {
  List<RandomUser> generateData() {
    return userGenerator(
        max: 30, loremIpsumParagraphs: 1, loremIpsumWords: 100);
  }
}
