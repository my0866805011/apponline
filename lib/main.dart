import 'package:apponline/states/authen.dart';
import 'package:apponline/states/buyer_service.dart';
import 'package:apponline/states/create_account.dart';
import 'package:apponline/states/rider_service.dart';
import 'package:apponline/states/saler_service.dart';
import 'package:apponline/utility/config.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> map ={
  '/authen':(BuildContext context) => const Authen(),
  '/createAccount':(BuildContext context) => const CreateAccount(),
  '/buyerService':(BuildContext context) => const BuyerService(),
  '/salerService':(BuildContext context) => const SalerService(), 
  '/riderservice':(BuildContext context) => const RiderService(),
};

String? mInitRoute;

void main() {
  mInitRoute = Config.routeAuthen;
  runApp(MyApp());
  
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.appName,
      routes: map,
      initialRoute: mInitRoute,
    );
  }
}
