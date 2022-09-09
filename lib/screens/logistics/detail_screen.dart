import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:talk_deals_logistics/controllers/logistic_state_controller.dart';
import 'package:talk_deals_logistics/widgets/details_bottom_sheet.dart';


class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  final LogisticStateController _logisticStateController = Get.find<LogisticStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000000),
        centerTitle: true,
        title: const Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: const Color(0xffF3F3F3),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            const Text(
              "Destination",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12
              ),
            ),
            Container(
              height: 150,
              width: Get.width,
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFF5C2A),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: const Icon(Iconsax.truck, size: 14, color: Colors.white,),
                              ),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 40,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFF5C2A),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: const Icon(Iconsax.location, size: 14, color: Colors.white,),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              // ======== Destination from =======
                              Text(
                                "Kururdu phase 2, Abuja.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              // ======== Destination to =======
                              Text(
                                "Kururdu phase 2, Abuja.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              // ======== Owners Details =======
              const Text(
                "Owner Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12
                ),
              ),
              InkWell(
                onTap: (){
                  // Show Details in a bottom sheet
                  DetailBottomSheet.showDetailBottomSheet();
                },
                child: Container(
                  height: 120,
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: CircleAvatar(
                              radius: 20,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          // ======== Owners Name =======
                          Expanded(
                            flex: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Akintade Oluwaseun Timothy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                ),
                                const SizedBox(height: 5,),
                          
                                // ======== Owners Address =======
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Icon(
                                        Iconsax.location, 
                                        color: Colors.grey, 
                                        size: 18,
                                      )
                                    ),
                                    SizedBox(width: 2,),
                                    Expanded(
                                      flex: 14,
                                      child: Text(
                                        "Karu extension community 2, New Karu, Abuja",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                // ======== Owners Phonenumber =======
                                Row(
                                  children: const [
                                    Icon(Iconsax.call, color: Colors.grey, size: 18,),
                                    SizedBox(width: 2,),
                                    Text(
                                      "08163421203",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              // ======== Customer Details ==========
              const Text(
                "Customer Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12
                ),
              ),
              InkWell(
                onTap: (){
                  DetailBottomSheet.showDetailBottomSheet();
                },
                child: Container(
                  height: 120,
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ======== Customer photo =======
                      Row(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: CircleAvatar(
                              radius: 20,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          // ======== Owners Name =======
                          Expanded(
                            flex: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Akintade Oluwaseun Timothy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                ),
                                const SizedBox(height: 5,),
                          
                                // ======== Owners Address =======
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Icon(
                                        Iconsax.location, 
                                        color: Colors.grey, 
                                        size: 18,
                                      )
                                    ),
                                    SizedBox(width: 2,),
                                    Expanded(
                                      flex: 14,
                                      child: Text(
                                        "Karu extension community 2, New Karu, Abuja",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                // ======== Owners Phonenumber =======
                                Row(
                                  children: const [
                                    Icon(Iconsax.call, color: Colors.grey, size: 18,),
                                    SizedBox(width: 2,),
                                    Text(
                                      "08163421203",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              // ========= Item List =========
              const Text(
                "Items(3)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: Get.width, 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 1,
                    separatorBuilder: (context, index){
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(),
                      );
                    }, 
                    itemBuilder: (context, index){
                      return Row(
                        children: [
                          // ======= Item Picture =======
                          Container(
                            height: 150,
                            width: Get.width / 2.5,
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      );
                    }, 
                    
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }