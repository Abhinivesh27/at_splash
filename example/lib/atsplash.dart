import 'dart:async';

import 'package:flutter/material.dart';

class ATsplash extends StatefulWidget {
  final bool isTextIcon;
  final bool isImageIcon;

  final String textIcon;
  ImageProvider imageIcon;
  final double imageSize;

  final double textSize;
  final Color textColor;

  final List<Color> backgroundColors;

  final void Function() afterSplash;
  final int splashDuration;

  ATsplash({
    super.key,
    this.isTextIcon = true,
    this.isImageIcon = false,
    this.imageIcon =
        const NetworkImage('https://atmega.live/dist/images/atmega-logo.png'),
    this.imageSize = 500,
    this.textIcon = "ATmega",
    this.textSize = 30.0,
    this.textColor = Colors.white,
    this.backgroundColors = const [Colors.blue, Colors.purple],
    required this.afterSplash,
    this.splashDuration = 5,
  });

  @override
  State<ATsplash> createState() => _ATsplashState();
}

class _ATsplashState extends State<ATsplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: widget.splashDuration), widget.afterSplash);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.backgroundColors,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.isImageIcon
              ? Image(
                  image: widget.imageIcon,
                  height: widget.imageSize,
                  width: widget.imageSize,
                )
              : Container(),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height / 16,
          // ),
          widget.isTextIcon
              ? Text(
                  widget.textIcon,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Container(),
        ],
      ),
    ));
  }
}
