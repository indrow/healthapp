import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      scrollDirection: Axis.horizontal,
      children: countries.map((country) {
        return Container(
            height: size.height * 0.18,
            width: size.width * 0.9,
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: Text(country));
      }).toList(),
    );
  }
}

class TopCard extends StatelessWidget {
  final double height;
  const TopCard({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.18,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: Color(0xFFEBF0FC),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
