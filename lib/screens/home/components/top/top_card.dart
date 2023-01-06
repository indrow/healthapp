import 'package:flutter/material.dart';

import 'package:healthapp/common/constants.dart';

class TopCard extends StatefulWidget {
  final Color color;
  final double width;

  const TopCard({
    super.key,
    required this.color,
    required this.width,
    this.child,
  });

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
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          alignment: Alignment.center,
          child: widget.child),
    );
  }
}
