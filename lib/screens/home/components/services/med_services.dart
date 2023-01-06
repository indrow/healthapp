import 'package:flutter/material.dart';

import 'package:healthapp/common/constants.dart';
import 'package:healthapp/screens/home/components/services/card_service.dart';
import 'package:healthapp/screens/home/components/services/med_service.dart';

class MedServices extends StatelessWidget {
  const MedServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.081, vertical: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding),
              child: const Text("Health services"),
            ),
            Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(children: [
                    MedService(
                        imgPath: "assets/images/cancer.png",
                        caption: "Cancer care"),
                    MedService(
                        imgPath: "assets/images/covid.png", caption: "Covid"),
                    MedService(
                        imgPath: "assets/images/medical.png",
                        caption: "General physician"),
                    MedService(
                        imgPath: "assets/images/pregnant.png",
                        caption: "Gynaechology")
                  ]),
                  TableRow(children: [
                    const MedService(
                        imgPath: "assets/images/man_image.png",
                        caption: "Geriatrics"),
                    const MedService(
                        imgPath: "assets/images/female_doc.png",
                        caption: "Pediatrics"),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "view more",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: kPrimaryColor),
                      ),
                    ),
                    const Text("")
                  ]),
                ]),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  CardService(color: const Color(0xffF6DFEE), children: [
                    const Icon(Icons.wifi_tethering),
                    Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: const Text("Nearest ambulance"))
                  ]),
                  CardService(color: const Color(0xffFAE2CC), children: [
                    const Icon(Icons.bluetooth_drive_outlined),
                    Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: const Text("Medicine remainder"))
                  ]),
                  CardService(color: const Color(0xffE4EBFB), children: [
                    const Icon(Icons.filter_9_plus_outlined),
                    Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: const Text("Nearest healtcare"))
                  ]),
                ],
              ),
            )
          ],
        ));
  }
}
