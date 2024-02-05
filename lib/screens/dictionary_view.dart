import 'package:flutter/material.dart';
import 'package:vsa_mobile/const/const_dimension.dart';
import 'package:vsa_mobile/widgets/dictionary_list.dart';
import 'package:vsa_mobile/widgets/searching_bar.dart';

var demoDictionary = [
  "cong",
  "cha",
  "nhu",
  "nui",
  "thai son",
  "nghia",
  "me",
  "nhu",
  "nuoc",
  "trong",
  "nguon",
  "chay",
  "ra"
];

class DictionaryView extends StatelessWidget {
  const DictionaryView({super.key});

  @override
  Widget build(BuildContext context) {
    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SearchingBar(
            0.9 * screen_width,
            screen_height < horizontalHeight
                ? 0.2 * screen_height
                : 0.05 * screen_height,
            "Tìm kiếm từ vựng ở đây",
            WordSearch()),
        const Expanded(child: DictionaryList()),
      ],
    );
    //return const DictionaryList();
  }
}
