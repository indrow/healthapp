import 'package:flutter/material.dart';

import 'package:healthapp/screens/home/components/body.dart';
import 'package:healthapp/health_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context),
      body: const Body(),
    );
  }
}

AppBar baseAppBar(context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * 0.16,
    title: Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello \u{1F44B}",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: const Text(
                "John Lenon",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black),
              ),
            )
          ],
        ),
        Expanded(child: Container()),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}
