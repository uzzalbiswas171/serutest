import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:seru_test_project/CustomWidget/CustomBootomBar/SplashBootomBar/splash_bootom_bar.dart';
import 'package:seru_test_project/CustomWidget/CustomTextFromField/custom_text_from_fild.dart';

import '../../../CustomWidget/CustomButton/custom_button.dart';
import '../../../CustomWidget/CustomText/custom_text.dart';
import '../../../custom_const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Main_Theme_Color.withOpacity(0.7),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Main_Theme_Color.withOpacity(0.2),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40,left: 15),
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: "Profile", fontSize: 28, fontWeight: FontWeight.w600, ),
                    )   ,
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D4E03AQE75diCZ3zYhA/profile-displayphoto-shrink_800_800/0/1715787558634?e=1724889600&v=beta&t=FRpgbPUzUtC2G5_vOF4e2SFUxhmHVTHrhPUSpKysS4w"),
                      ),
                    ),
                    CustomText(text: "Uzzal Biswas", fontSize: 35, fontWeight: FontWeight.w600, ),
                    CustomText(text: "ID:  112211", fontSize: 20, fontWeight: FontWeight.w400, )
                  ],
                ),
              ),
          Container(
           height: 310,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(44)),
                color: Colors.white
            ),
            padding: EdgeInsets.only(
                left: 20,right: 20,top: 32
            ),
            
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child:GridView.builder(
              itemCount: profileaccess.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Main_Theme_Color.withOpacity(0.7),
                  ),
                  alignment: Alignment.center,
                  child: CustomText(text: "${profileaccess[index]}", fontSize: 15, fontWeight: FontWeight.w500),
                );
              },) ,
          )
            ],
          ),
        ),
      ),
    );
  }

  List profileaccess=[
    "Subscription",
    "Video Class",
    "Model Test",
    "Mock Test",
    "Live Exam",
    "Exam Result",

  ];

  bool is_clicked=false;
  bool is_clicked_register=false;
}








