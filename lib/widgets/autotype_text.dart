import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextExample extends StatefulWidget {
  @override
  _AnimatedTextExampleState createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;
  final String _text = "FullStack  Developer";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    _animation = IntTween(begin: 0, end: _text.length).animate(_controller);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        String text = _text.substring(0, _animation.value);
        return Text(text,style: GoogleFonts.beauRivage(color: CupertinoColors.systemOrange,fontSize: size.width>700?size.width*0.04:size.width*0.060,fontWeight: FontWeight.bold),);
      },
    );
  }
}

