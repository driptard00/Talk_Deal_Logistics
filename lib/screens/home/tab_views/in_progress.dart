import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:talk_deals_logistics/routes/app_route_names.dart';


class InProgress extends StatelessWidget {
  const InProgress({Key? key}) : super(key: key);

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
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: (){
              Get.toNamed(detailscreen);
            },
            child: Container(
              height: 160,
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        // ======== Customer Photo =======
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "images/profile.png"
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // ======== Customer Name =======
                            const Text(
                              "Akintade Oluwaseun Timothy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),

                            // ======== Customer Address =======
                            Row(
                              children: const [
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Iconsax.location, color: Colors.grey, size: 18,
                                  ),
                                ),
                                SizedBox(width: 2,),
                                Expanded(
                                  flex: 13,
                                  child: Text(
                                    "Karu extension community 2, New Karu, Abuja",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  // ======== Number of items =======
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
                  const SizedBox(
                    height: 5,
                  ),

                  // ======== Logistics type =======
                  Row(
                    children: const [
                      Text(
                        "Logistic type:",
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
                  const SizedBox(
                    height: 5,
                  ),

                  // ======== Time Accepted =======
                  Row(
                    children: const [
                      Icon(Iconsax.calendar, size: 18, color: Colors.grey,),
                      SizedBox(width: 2,),
                      Text(
                        "March 14, 2022",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
          );
        })
      ),
    );
  }
}