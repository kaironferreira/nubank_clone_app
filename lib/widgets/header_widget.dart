// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/controllers/home_controller.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: secundaryColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.accountOutline,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return IconButton(
                onPressed: () {
                  controller.showBalance();
                },
                icon: Icon(
                  controller.visibleBalance
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOffOutline,
                  color: Colors.white,
                  size: 32,
                ),
              );
            }),
        IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
            size: 26,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
            size: 26,
          ),
        ),
      ],
    );
  }

  _welcome() {
    return (Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "Olá, Kairon Ferreira",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
