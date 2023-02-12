import 'dart:io';
import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_image.dart';
import 'package:apponline/widgets/show_title.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyDialog {
  Future<Null> alertLocationService(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(cPath: Config.image4,),
          title: ShowTitle(cTitle: 'Location Service Off ', 
          cTextStyle: Config().h2Style(),), 
          subtitle: ShowTitle(cTitle: 'เปิด Location Service On',
          cTextStyle: Config().h2Style(),)     
        ),
        actions: [TextButton(onPressed: () async {
          await Geolocator.openLocationSettings();
          exit(0);
        },
        // => Navigator.pop(context),
        child: const Text(('Ok')))
        ],
      ),
    );  
  }

}