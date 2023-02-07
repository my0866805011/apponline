import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_image.dart';
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
 

  @override
  Widget build(BuildContext context) {
    double mSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: dispImgage(mSize),
        ),
      );

  
  }

  Container dispImgage(double mSize) {
    return Container(
        width: mSize*0.35,
        child: ShowImage(cPath: Config.image2),
        );
  }
}