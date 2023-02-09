import 'package:flutter/material.dart';

class Config {
  static String appName = 'AnsOnline';
  static String domain = 'https://57ans.com/ansonline/api';

//Route
  static String routeAuthen = '/authen';
  static String routeCreate = '/createAccount';
  static String routeBuyer = '/buyerService';
  static String routeSale = '/saleService';
  static String routerider = '/rideService';

// Image
  static String image1 = 'assets/images/1.png';
  static String image2 = 'assets/images/2.png';
  static String image3 = 'assets/images/3.png';
  static String image4 = 'assets/images/4.png';
  static String avatar = 'assets/images/avatar.png';

//Color
  static Color primary = Color.fromARGB(255, 243, 133, 225);
  static Color dart = Color.fromARGB(255, 5, 109, 173);
  static Color light = Color.fromARGB(255, 203, 245, 215);

// Style
  TextStyle h1Style() => TextStyle(
        fontSize: 24,
        color: dart,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: dart,
        fontWeight: FontWeight.w700,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dart,
        fontWeight: FontWeight.normal,
      );
  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        foregroundColor: Config.light,
        shadowColor: Config.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
