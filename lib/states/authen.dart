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
  bool mStatusRedEye = true;
  @override
  Widget build(BuildContext context) {
    double mSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: ListView(
            children: [
              dispImgage(mSize),
              appName(),
              userName(mSize),
              userPassword(mSize),
            ],
          ),
        ),
      ),
    );
  }

  Row userName(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: mSize * 0.6,
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: Config().h3Style(),
                labelText: 'User :',
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Config.dart,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Config.dart),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Config.light),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )),
      ],
    );
  }

  Row userPassword(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: mSize * 0.6,
            child: TextFormField(
              obscureText: mStatusRedEye,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        mStatusRedEye = !mStatusRedEye;
                      });
                    },
                    icon: mStatusRedEye
                        ? Icon(
                            Icons.remove_red_eye,
                            color: Config.dart,
                          )
                        : Icon(
                            Icons.remove_red_eye_outlined,
                            color: Config.dart,
                          )),
                labelStyle: Config().h3Style(),
                labelText: 'Password :',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Config.dart,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Config.dart),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Config.light),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )),
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
          margin: EdgeInsets.only(top: 16),
          width: mSize * 0.35,
          child: ShowImage(cPath: Config.image2),
        ),
      ],
    );
  }
}
