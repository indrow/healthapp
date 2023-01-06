import 'package:flutter/material.dart';

class TopCardImg extends StatefulWidget {
  const TopCardImg({
    super.key,
    required this.path,
  });

  final String path;

  @override
  State<TopCardImg> createState() => _TopCardImgState();
}

class _TopCardImgState extends State<TopCardImg> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(34.56),
      child: Image.asset(
        widget.path,
        width: 108,
        height: 108,
        fit: BoxFit.fill,
      ),
    );
  }
}
