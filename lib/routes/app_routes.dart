import 'package:get/get.dart';
import 'package:talk_deals_logistics/routes/app_route_names.dart';
import 'package:talk_deals_logistics/screens/auth/login_screen.dart';
import 'package:talk_deals_logistics/screens/auth/signup_screen.dart';
import 'package:talk_deals_logistics/screens/logistics/detail_screen.dart';
import 'package:talk_deals_logistics/screens/logistics/holder_screen.dart';

List<GetPage> getPages = [

  // ======== AUTH ROUTES =========

  // ======== Login =========
  GetPage(
    name: loginscreen, 
    page: ()=> LoginScreen()
  ),

  // ======== Sign up =========
  GetPage(
    name: signupscreen, 
    page: ()=> SignUpScreen()
  ),


  // =========== MAIN SCREEN ROUTES ============

  // ======== Holder screen =========
  GetPage(
    name: holderscreen, 
    page: ()=> HolderScreen()
  ),

  // ======== Detail screen =========
  GetPage(
    name: detailscreen, 
    page: ()=> DetailScreen()
  ),

];