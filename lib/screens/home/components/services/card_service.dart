import 'package:flutter/material.dart';

class CardService extends StatefulWidget {
  const CardService({
    Key? key,
    this.color,
    required this.children,
  }) : super(key: key);

  final Color? color;
  final List<Widget> children;

  @override
  State<CardService> createState() => _CardServiceState();
}

class _CardServiceState extends State<CardService> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Widget nextIcon = Container(
      width: size.width,
      height: size.width * 0.16,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [Icon(Icons.navigate_next)],
      ),
    );

    return Stack(
      children: [
        Container(
            width: size.width,
            height: size.width * 0.16,
            padding: const EdgeInsets.only(left: 16),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.children,
            )),
        nextIcon
      ],
    );
  }
}
