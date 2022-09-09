
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:talk_deals_logistics/routes/app_route_names.dart';

class NewJobs extends StatelessWidget {
  const NewJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (context, index){
          return const SizedBox(
            height: 20,
          );
        }, 
        itemBuilder: (context, index){
          return Column(
            children: [

              // ======== Time of alert =======
              Row(
                children: const [
                  Text(
                    "11:09",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(detailscreen);
                },
                child: Container(
                  height: 180,
                  width: Get.width,
                  padding: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
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
                            // ========= Destination from ==========
                            Column(
                              children: const [
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

                                // ========= Destination to ==========
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
                        const SizedBox(height: 10,),

                        // ========= Number of items ==========
                        Row(
                          children: const [
                            Text(
                              "Number of items:",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),

                        // ========= Logistics type ==========
                        Row(
                          children: const [
                            Text(
                              "Logistics type:",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "Van",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }, 
      ),
    );
  }
}