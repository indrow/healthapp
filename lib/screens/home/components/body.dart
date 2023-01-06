import 'package:flutter/material.dart';

import 'package:healthapp/screens/home/components/services/med_services.dart';
import 'package:healthapp/screens/home/components/top/top.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: const [Top(), MedServices()],
    ));
  }
}
