import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vsa_mobile/const/color.dart';
import 'package:vsa_mobile/database/wordtopic.dart';
import 'package:vsa_mobile/screens/words_in_topic.dart';
import 'package:vsa_mobile/widgets/progress_circle.dart';

class WordTopicCard extends StatelessWidget {
  // const WordTopicCard({super.key});
  final String url_path;
  final String title;
  final double current_completed;
  final double total_lessons;
  final double width;
  final double height;
  WordTopicCard({
    super.key,
    required this.url_path,
    required this.title,
    required this.current_completed,
    required this.width,
    required this.height,
    required this.total_lessons,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WordsInTopic(
                    topic_name: title,
                    height: 100,
                    width: 200,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
        child: Container(
          decoration: BoxDecoration(
              color: ColorClass.myTopicCardBG,
              borderRadius: BorderRadius.circular(20)),
          width: width,
          height: height,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(left: 10, right: 20),
                      child: SvgPicture.asset(url_path,
                          height: 0.1 * width,
                          width: 0.2 * width,
                          fit: BoxFit.contain)),
                  Container(
                      // margin: EdgeInsets.only(top: 10, bottom: 10),
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          Text("Tiến độ $current_completed/$total_lessons ",
                              style: const TextStyle(
                                  color: ColorClass.mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                        ],
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: ProgressCircle(
                  currentValue: current_completed,
                  maxValue: total_lessons,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}