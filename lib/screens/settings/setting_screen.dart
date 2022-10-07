import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../controllers/logistic_state_controller.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<LogisticStateController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView (
              child: Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20
                          ),
                          SizedBox(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Account",
                                  style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    // height: 220,
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _listTile(context, "Edit profile", Iconsax.profile_add),
                                        const Divider(
                                          color: Colors.grey,
                                          thickness: 0.2,
                                        ),
                                        _listTile(context, "Change password", Iconsax.lock),
                                        const Divider(
                                          color: Colors.grey,
                                          thickness: 0.2,
                                        ),
                                        _listTile(context, "Logout", Iconsax.logout),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Display",
                                  style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ListTile(
                                          leading: const Icon(
                                            Iconsax.moon,
                                            color: Color(0xffFF5C2A),
                                            size: 20,
                                          ),
                                          title: const Text(
                                            "Dark theme",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black
                                            ),
                                          ),
                                          trailing: Switch(
                                            activeColor: Color(0xffFF5C2A),
                                            value: true, 
                                            onChanged: (value){
            
                                            }
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ), 
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Security",
                                  style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ListTile(
                                          leading: const Icon(
                                            Iconsax.finger_scan,
                                            color: Color(0xffFF5C2A),
                                            size: 20,
                                          ),
                                          title: const Text(
                                            "Biometrics",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black
                                            ),
                                          ),
                                          trailing: Switch(
                                            activeColor: Color(0xffFF5C2A),
                                            value: true, 
                                            onChanged: (value){
            
                                            }
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),  
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "General",
                                  style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    // height: 220,
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _listTile(context, "T/C & Privacy", Iconsax.note),
                                        const Divider(
                                          color: Colors.grey,
                                          thickness: 0.2,
                                        ),
                                        _listTile(context, "Tips & Tricks", Iconsax.book),
                                        const Divider(
                                          color: Colors.grey,
                                          thickness: 0.2,
                                        ),
                                        _listTile(context, "About Talk Deals", Iconsax.note2),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Danger Zone",
                                  style:  TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        ListTile(
                                          leading: Icon(
                                            Iconsax.trash,
                                            color: Color(0xffFF5C2A),
                                            size: 20,
                                          ),
                                          title: Text(
                                            "Delete Account",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),  
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
  ListTile _listTile (BuildContext context, String listTitle, IconData leadIcon){
    return ListTile(
      leading: Icon(
        leadIcon,
        size: 20,
        color: const Color(0xffFF5C2A),
      ),
      title: Text(
        listTitle,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
        color: Colors.grey ,
      ),
    );
  }
}