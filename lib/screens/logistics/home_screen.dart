import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          centerTitle: true,
          title: const Text(
            "Talk Deals Logistics",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          color: const Color(0xffF3F3F3),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                height: 35,
                width: 380,
                color: Colors.grey.shade300,
                child: const TabBar(
                  unselectedLabelColor: Color(0xff808080),
                  indicator: BoxDecoration(
                    color: Color(0xffFF5C2A),
                  ),
                  tabs: [
                    Tab(
                      text: "In progress",
                    ),
                    Tab(
                      text: "New Jobs",
                    ),
                    Tab(
                      text: "Completed",
                    ),
                  ]
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: TabBarView(
                    children: [
                      Container(
                        height: Get.height,
                        width: Get.width,
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
                              child: Container(
                                height: 160,
                                width: 380,
                                padding: const EdgeInsets.only(left: 15),
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
                                        const CircleAvatar(
                                          radius: 20,
                                        ),
                                        const SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Akintade Oluwaseun Timothy",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Icon(Iconsax.location, color: Colors.grey, size: 18,),
                                                Text(
                                                  "Karu extension community 2, New Karu, Abuja",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
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
                                    Row(
                                      children: const [
                                        Icon(Iconsax.calendar, size: 18, color: Colors.grey,),
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
                      ),
                      Container(
                        height: Get.height,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: Get.height,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}