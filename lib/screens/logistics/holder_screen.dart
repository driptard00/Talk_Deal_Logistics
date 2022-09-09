import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:talk_deals_logistics/controllers/logistic_state_controller.dart';


class HolderScreen extends StatelessWidget {
  HolderScreen({Key? key}) : super(key: key);

  // Instantiate the controller 
  final LogisticStateController _logisticStateController = Get.put(LogisticStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LogisticStateController>(
      builder: (controller) {
        return Scaffold(
          body: controller.screens[controller.selectedIndex],

          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 60,
              width: Get.width,
              color: const Color(0xff000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // ======== Home ==========
                  IconButton(
                    onPressed: (){
                      controller.selectedIndexItem(0);
                    },
                    icon: Icon(
                      Iconsax.home,
                      color: (controller.selectedIndex == 0)? 
                      (const Color(0xffFF5C2A)): 
                      (const Color(0xffFFFFFF)),
                    )
                  ),

                  // ======== Profile ==========
                  IconButton(
                    onPressed: (){
                      controller.selectedIndexItem(1);
                    },
                    icon: Icon(
                      Iconsax.profile_circle,
                      color: (controller.selectedIndex == 1)? 
                      (const Color(0xffFF5C2A)): 
                      (const Color(0xffFFFFFF)),
                    )
                  ),

                  // ======== Settings ==========
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Iconsax.setting, color: Colors.white,)
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}