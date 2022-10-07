import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals_logistics/screens/home/home_screen.dart';
import 'package:talk_deals_logistics/screens/profile_screen/profile_screen.dart';

class LogisticStateController extends GetxController{

  // Instant variables
  int _selectedIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
  ];

  // GETTERS
  int get selectedIndex => _selectedIndex;
  List get screens => _screens;

  // SETTERS
  selectedIndexItem (value){
    _selectedIndex = value;
    update();
  }
  
}