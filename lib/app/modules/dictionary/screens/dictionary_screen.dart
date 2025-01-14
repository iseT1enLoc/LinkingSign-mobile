import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsa_mobile/app/core/const/color.dart';
import 'package:vsa_mobile/app/core/const/const_dimension.dart';

import 'package:vsa_mobile/app/modules/dictionary/widgets/dictionary_list.dart';
import 'package:vsa_mobile/app/global_widgets/searching_bar.dart';

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
    //final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Từ điển",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.011)),
          surfaceTintColor: Colors.transparent,
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 245, 245),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                  // icon: const Icon(Icons.search),
                ))
          ],
          backgroundColor: ColorClass.myBackground,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            SearchingBar(
                0.9 * context.width,
                context.height < horizontalHeight
                    ? 0.2 * context.height
                    : 0.05 * context.height,
                "Tìm kiếm từ vựng ở đây",
                WordSearch()),
            const SizedBox(height: 10),
            const Expanded(child: DictionaryList()),
          ],
        ));

    //return const DictionaryList();
  }
}
