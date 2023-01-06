import 'package:flutter/material.dart';

import 'package:healthapp/common/constants.dart';
import 'package:healthapp/screens/home/components/common/default_button.dart';
import 'package:healthapp/screens/home/components/top/top_card.dart';
import 'package:healthapp/screens/home/components/top/top_card_img.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.18,
      child: PageView(
          scrollDirection: Axis.horizontal,
          controller: PageController(viewportFraction: 0.9),
          children: [
            TopCard(
              width: size.width,
              color: const Color(0xFFFCF4EB),
            ),
            TopCard(
                width: size.width,
                color: const Color(0xFFEBF0FC),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: kDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 142,
                              height: 44,
                              child: Text(
                                "Get 20% off your first video consultation",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF3364E1)),
                              ),
                            ),
                            Expanded(child: Container()),
                            const DefaultButton(
                              height: 42,
                              width: 124,
                              text: "Find Doctors Now",
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(right: kDefaultPadding),
                        child:
                            const TopCardImg(path: "assets/images/image.png"),
                      ),
                    ],
                  ),
                )),
            TopCard(
              width: size.width,
              color: const Color(0xFFEDFCEB),
            ),
          ]),
    );
  }
}
