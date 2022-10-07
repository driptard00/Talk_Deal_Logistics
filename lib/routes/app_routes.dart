import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals_logistics/routes/app_route_names.dart';
import 'package:talk_deals_logistics/screens/auth/login_screen.dart';
import 'package:talk_deals_logistics/screens/auth/signup_screen.dart';
import 'package:talk_deals_logistics/screens/home/detail_screen.dart';
import 'package:talk_deals_logistics/screens/home/holder_screen.dart';
import 'package:talk_deals_logistics/screens/profile_screen/profile_screen.dart';
import 'package:talk_deals_logistics/screens/settings/setting_screen.dart';
import 'package:talk_deals_logistics/screens/splash/splash_screen.dart';

List<GetPage> getPages = [

  // ======= SPLASH ROUTES =========
  GetPage(
    name: splashscreen, 
    page: ()=> SplashScreen()
  ), 

  // ======== AUTH ROUTES =========

  // ======== Login =========
  GetPage(
    name: loginscreen,
    page: () => LoginScreen(),
    transition: Transition.circularReveal,
    transitionDuration:  const Duration(seconds: 3),
    curve: Curves.easeIn,
  ),

  // ======== Sign up =========
  GetPage(
    name: signupscreen,
    page: () => SignUpScreen(),
    transition: Transition.rightToLeft,
    transitionDuration: const Duration(milliseconds: 350),
    curve: Curves.easeIn,
  ),


  // =========== MAIN SCREEN ROUTES ============

  // ======== Holder screen =========
  GetPage(
    name: holderscreen, 
    page: ()=> HolderScreen(),
    transition: Transition.rightToLeft,

  ),

  // ======== Detail screen =========
  GetPage(
    name: detailscreen, 
    page: ()=> DetailScreen(),
    transition: Transition.rightToLeft,

  ),

  // ======== Setting screen =========
  GetPage(
    name: settingscreen, 
    page: ()=> SettingsScreen(),
    transition: Transition.downToUp,

  ),

  // ======== Profile screen =========
  GetPage(
    name: profilescreen, 
    page: ()=> ProfileScreen(),
    transition: Transition.downToUp,

  ),

];