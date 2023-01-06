import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton({super.key, this.height, this.width, this.text});

  final double? height, width;
  final String? text;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF3364E1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Text(
          widget.text ?? "",
          style: const TextStyle(
              color: Color(0xFFF8F9FB),
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 12),
        ),
      ),
    );
  }
}
