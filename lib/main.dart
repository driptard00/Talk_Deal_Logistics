import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals_logistics/routes/app_route_names.dart';
import 'package:talk_deals_logistics/routes/app_routes.dart';


String initialRoute = splashscreen;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Talk Deals Logistics",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
      initialRoute: initialRoute,
      getPages: getPages,
    );
  }

}