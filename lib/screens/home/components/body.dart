import 'package:flutter/material.dart';
import 'package:healthapp/common/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: SizedBox(
        height: size.height * 0.18,
        child: PageView(scrollDirection: Axis.horizontal, children: [
          TopCard(width: size.width),
          TopCard(width: size.width),
          TopCard(width: size.width)
        ]),
      ),
    );
  }
}

class TopCard extends StatefulWidget {
  final double width;

  const TopCard({
    super.key,
    this.color = const Color(0xFFEBF0FC),
    required this.width,
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width * 0.9,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: const BoxDecoration(
            color: Color(0xFFEBF0FC),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          alignment: Alignment.center,
          child: const Text("Test")),
    );
  }
}
