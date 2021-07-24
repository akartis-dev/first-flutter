import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';
import 'package:message/common/data.dart';
import 'package:message/component/rounded_image.dart';

class StorySectionWidget extends StatelessWidget {
  const StorySectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<RandomUser> data = DataFake().generateData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Activités',
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            height: 105,
            child: ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final RandomUser current = data[index];

                  return Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    height: 100,
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RoundedImageWidget(user: current),
                        Text(current.userName)
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
