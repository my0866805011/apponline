import 'package:flutter/material.dart';


 class ShowImage extends StatelessWidget {
  final String cPath;
  const ShowImage({super.key, required this.cPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(cPath);
  }
}