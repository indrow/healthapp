import 'package:flutter/material.dart';

class MedService extends StatefulWidget {
  const MedService({Key? key, required this.imgPath, required this.caption})
      : super(key: key);

  final String imgPath;
  final String caption;

  @override
  State<MedService> createState() => _MedServiceState();
}

class _MedServiceState extends State<MedService> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: SizedBox(
          width: 69,
          child: Column(
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(33),
                  child: Image.asset(widget.imgPath),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 6),
                child: Text(
                  widget.caption,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xFF0F131E)),
                ),
              )
            ],
          ),
        ));
  }
}
