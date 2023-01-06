import 'package:flutter/material.dart';

import 'package:healthapp/common/constants.dart';
import 'package:healthapp/health_app.dart';
import 'package:healthapp/screens/home/home_screen.dart';

void main() {
  runApp(const App());
}

// https://www.behance.net/gallery/156289803/UX-CASE-STUDY-MOBILE-HEALTHCARE-APP

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Healt App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
          fontFamily: "Signika Negative",
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HealtApp(),
    );
  }
}
