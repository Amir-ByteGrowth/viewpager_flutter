import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.size, this.step, this.imagePath, this.detail,
  }) : super(key: key);

  final Size size;
  final step;
  final imagePath;
  final detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.08,
              vertical: size.height * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
              Text(
                step,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              )
            ],
          ),
        ),
        Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(
          detail,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: kHeadingTextColor),
        ),
        Divider(
          thickness: 2.0,
          color: kPrimaryColor,
          indent: size.width * 0.4,
          endIndent: size.width * 0.4,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          "Try to focus on your project idea,\nthinking about the goal you\nwant to achieve.",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}