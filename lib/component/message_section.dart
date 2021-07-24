import 'package:flutter/material.dart';
import 'package:flutter_random_user/flutter_random_user.dart';
import 'package:message/common/data.dart';
import 'package:message/component/rounded_image.dart';
import 'package:message/screen/message_page.dart';

class MessageSectionWidget extends StatelessWidget {
  const MessageSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<RandomUser> data = DataFake().generateData();

    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Messages',
              style: TextStyle(fontSize: 20),
            ),
            ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, i) {
                  final RandomUser current = data[i];

                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MessagePage.routeName,
                          arguments: current);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RoundedImageWidget(
                            user: current,
                            dimension: 60,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(current.userName,
                                      softWrap: true,
                                      style: const TextStyle(fontSize: 18)),
                                  Text(current.loremIpsum,
                                      softWrap: true,
                                      maxLines: 2,
                                      style: const TextStyle(fontSize: 13))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
