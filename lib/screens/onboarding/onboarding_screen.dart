import 'package:flutter/material.dart';

import 'component/body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: OnBoardingScreenBody());
  }
}
