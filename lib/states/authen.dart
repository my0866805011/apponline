import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_image.dart';
import 'package:apponline/widgets/show_title.dart';
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
        child: ListView(
          children: [
            dispImgage(mSize),
            appName(),
            userName(mSize),
          ],
        ),
      ),
    );
  }

  Row userName(double mSize) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: mSize*0.6,
                child: TextFormField()),
            ],
          );
  }

  Row appName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          cTitle: Config.appName,
          cTextStyle: Config().h1Style(),
        ),
      ],
    );
  }

  Row dispImgage(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: mSize * 0.35,
          child: ShowImage(cPath: Config.image2),
        ),
      ],
    );
  }
}
