import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:run_rush/widgets/rectangle_icon_text.dart';
import 'package:run_rush/service/api_service.dart';
import 'package:run_rush/view/text_bottom_email.dart';
import 'package:run_rush/view/text_email.dart';

import 'view/custom_nav_bar.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/dotted_container.dart';
import 'view/header_container.dart';
import 'model/model.dart';

class RunRushHome extends StatefulWidget {
  const RunRushHome({Key? key}) : super(key: key);

  @override
  State<RunRushHome> createState() => _RunRushHomeState();
}

class _RunRushHomeState extends State<RunRushHome> {

  late List<UserModel>? _userModel = [];
  late Random random = Random();
  late int randomInt;

  @override
  void initState() {
    super.initState();
    randomInt = random.nextInt(10);
    getData();
  }

  void getData() async {
    _userModel = (await ApiService().getUsers());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff15161c),
        body: Container(decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img_4.png"),
            fit: BoxFit.cover,
          ),
        ),
          child: _userModel == null || _userModel!.isEmpty
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : Column(
            children: [
              const HeaderContainer(),
              const SizedBox(height: 10,),
              TextEmail(
                  name: _userModel![randomInt].username,
                  email: _userModel![randomInt].email ),
              const SizedBox(height: 10,),
              TextBottomEmail(text: _userModel![randomInt].id.toString()),
              const SizedBox(height: 30,),
              DottedContainer(image: Image.asset(width: 59, "assets/img_3.png",),),
              const SizedBox(height: 30,),
              SizedBox(height: 56,
                child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.width/4
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return const DottedContainer();
                }),
          ),
              const SizedBox(height: 50,),
              RectangleIconText(
                image: "assets/img_5.png",
                text: _userModel![randomInt].phone,),
              const SizedBox(height: 20,),
              RectangleIconText(
                image: "assets/img_6.png",
                text: _userModel![randomInt].website,),
              const SizedBox(height: 50,),
              CustomElevatedButton(fun: () async{
                setState(() {
                  _userModel?.clear();
                  getData();
                  randomInt = random.nextInt(10);
                });
              }),
              const SizedBox(height: 50,),
              const CustomNavBar()
            ],
          ),
        ));
  }
}
