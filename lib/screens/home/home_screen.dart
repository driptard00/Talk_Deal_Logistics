import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk_deals_logistics/screens/home/tab_views/completed.dart';
import 'package:talk_deals_logistics/screens/home/tab_views/in_progress.dart';
import 'package:talk_deals_logistics/screens/home/tab_views/new_jobs.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          automaticallyImplyLeading: false,
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
              const TabBar(
                labelColor: Color(0xffFF5C2A),
                unselectedLabelColor: Color(0xff808080),
                indicator: BoxDecoration(
                  color: Colors.transparent,
                ),
                tabs: [
                  // ========= In progress tab ========
                  Tab(
                    text: "In progress",
                  ),

                  // ========= New jobs tab ========
                  Tab(
                    text: "New Jobs",
                  ),

                  // ========= Completed tab ========
                  Tab(
                    text: "Completed",
                  ),
                ]
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                  child: const TabBarView(
                    children: [
                      // ========= In progress screen ========
                      InProgress(),

                      // ========= New jobs tab ========
                      NewJobs(),

                      // ========= Completed tab ========
                      Completed()
                      
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