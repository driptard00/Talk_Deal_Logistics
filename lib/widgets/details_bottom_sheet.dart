import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DetailBottomSheet{
  static showDetailBottomSheet(){
    Get.bottomSheet(
      Container(
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleAvatar(
              radius: 50,
            ),
            Text(
              "Akintade Oluwaseun Timothy",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
            Flexible(
              child: Text(
                "Karu extension community 2, New Karu, Abuja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
                ),
              ),
            ),
            Text(
              "08163421203",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey
              ),
            ),
          ],
        ),
      )
    );
  }
}