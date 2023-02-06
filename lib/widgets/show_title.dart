import 'package:flutter/material.dart';

class ShowTitle extends StatelessWidget {
  final String cTitle;
  final TextStyle cTextStyle;
  
  const ShowTitle({
    super.key, required this.cTitle,
     required this.cTextStyle,
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      cTitle,
      style: cTextStyle, 
      );
  }
}