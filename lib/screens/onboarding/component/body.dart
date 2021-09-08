import 'package:flutter/material.dart';
import 'package:viewpager_flutter/constants.dart';

import 'content.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({Key key}) : super(key: key);

  @override
  _OnBoardingScreenBodyState createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  int currentPage = 0;

  List<Map<String, String>> onBoardingData = [
    {
      "text": "1°STEP",
      "image": "assets/images/image1.png",
      "title": "Think about your idea",
    },
    {
      "text": "2°STEP",
      "image": "assets/images/image2.png",
      "title": "Share your thoughts",
    },
    {
      "text": "3°STEP",
      "image": "assets/images/image3.png",
      "title": "Realize your project",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: size.height * 0.8,
              child: PageView.builder(
                  itemCount: onBoardingData.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) => Content(size: size,step: onBoardingData[index]["text"],imagePath: onBoardingData[index]["image"],detail: onBoardingData[index]["title"],)),
            ),
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingData.length,
                (index) => Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                    color: currentPage == index ? kPrimaryColor : Colors.white,
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "skip",
            ),
          ],
        ),
      ),
    );
  }




}


